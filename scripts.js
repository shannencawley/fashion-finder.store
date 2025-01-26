///////////////////////////////////////////////////////////////
//
// Who: Shannen Cawley
// Filename: scripts.js
// Last Day Modified: 16 Sept 2024 
// Description: This file contains the function that handles the 
// the retrieval and insertion of items to the lists on the user
// profiles.
//
///////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
//
// Function name: document.addEventListener
// Description: This function listens for click events throughout the page.
//              It handles clicks on images to store the selected item, 
//              and it listens for clicks on "Save" and "Mark as Bought"
//              buttons to trigger AJAX requests to save those items to 
//              the respective lists in the database. Whenever an item is
//              viewed it is inserted into the database as well.
// Parameters: click - the event object, representing a click action to trigger event
// Return Value: none
//
////////////////////////////////////////////////////////////////////////
document.addEventListener('click', function(event) {
    let target = event.target;

    // check if an image with class gs-image is clicked (API contains the classes, have to inspect elements).
    if (target.tagName === 'IMG' && target.classList.contains('gs-image')) {
        console.log('Image clicked:', target);

        let container = target.closest('.gsc-imageResult');
        let urlElement = container.querySelector('.gs-previewLink');
        let imageUrl = urlElement ? urlElement.getAttribute('href') : 'URL not found';
        if (!imageUrl.startsWith('http')) {
            imageUrl = 'https://' + imageUrl;
        }

        const imageSrc = target.src;
        const imageTitle = target.getAttribute('alt');
        console.log('Image info:', { imageSrc, imageTitle, imageUrl });

        window.selectedItem = { imageUrl, imageSrc, imageTitle };

        // Automatically save the viewed item to the "viewed" list
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'insertViewed.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function() {
            if (xhr.status === 200) {
                console.log('Item viewed and saved to database:', xhr.responseText);
            } else {
                console.error('Error saving item to viewed list:', xhr.responseText);
            }
        };
        xhr.onerror = function() {
            console.error('AJAX request failed for viewed items.');
        };
        console.log(`Sending AJAX request to save viewed item: ${imageTitle}`);
        xhr.send(`item_url=${encodeURIComponent(imageUrl)}&item_title=${encodeURIComponent(imageTitle)}&item_src=${encodeURIComponent(imageSrc)}`);
    }

    // Check if a button is clicked (Save or Mark as Bought)
    if (target.tagName === 'BUTTON') {
        let actionType;

        if (target.id === 'save-header-button') {
            actionType = 'favorites';
            console.log('Save button clicked');
        } else if (target.id === 'bought-header-button') {
            actionType = 'bought';
            console.log('Bought button clicked');
        }

        // Make sure an item has been selected before attempting to save
        if (window.selectedItem && actionType) {
            const { imageUrl, imageSrc, imageTitle } = window.selectedItem;
            const xhr = new XMLHttpRequest();
            let endpoint;

            if (actionType === 'favorites') {
                endpoint = 'insertFavorites.php';
            } else if (actionType === 'bought') {
                endpoint = 'insertBought.php';
            }

            xhr.open('POST', endpoint, true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {
                if (xhr.status === 200) {
                    const response = JSON.parse(xhr.responseText);
                    
                    // Handle different responses from the server
                    if (response.status === "success") {
                        alert(response.message); // Item added successfully
                    } else if (response.status === "duplicate") {
                        alert(response.message); // Item already in the list
                    } else {
                        alert("Error: " + response.message); // Any error message
                    }
                } else {
                    console.error(`Error saving item to ${actionType}:`, xhr.responseText);
                }
            };
            xhr.onerror = function() {
                console.error('AJAX request failed');
            };
            console.log(`Sending AJAX request to save ${actionType} item: ${imageTitle}`);
            xhr.send(`item_url=${encodeURIComponent(imageUrl)}&item_title=${encodeURIComponent(imageTitle)}&item_src=${encodeURIComponent(imageSrc)}`);
        } else {
            console.error('No item selected before saving.');
        }
    }
});

// Helper function to save an item using fetch
function saveItem(endpoint, item) {
    const params = new URLSearchParams({
        item_url: item.imageUrl,
        item_title: item.imageTitle,
        item_src: item.imageSrc,
    }).toString();

    fetch(endpoint, {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params,
    })
    .then(response => response.json())
    .then(data => {
        if (data.status === "success") {
            alert(data.message);
        } else if (data.status === "duplicate") {
            alert(data.message);
        } else {
            alert("Error: " + data.message);
        }
    })
    .catch(error => console.error(`Error saving item to ${endpoint}:`, error));
}



// FOllOWING/ UNFOLLOW
document.querySelectorAll('.follow-button').forEach(button => {
    button.addEventListener('click', function() {
        const userId = this.getAttribute('data-userid');
        const action = this.getAttribute('data-action');
        const formData = new FormData();
        formData.append('followingID', userId);
        formData.append('action', action);

        fetch('followUser.php', {
            method: 'POST',
            body: formData
        })
        .then(() => {
            if (action === 'follow') {
                // Change to 'Unfollow' if the action was 'follow'
                this.textContent = 'Unfollow';
                this.setAttribute('data-action', 'unfollow');
            } else {
                // Change to 'Follow' if the action was 'unfollow'
                this.textContent = 'Follow';
                this.setAttribute('data-action', 'follow');
            }
        })
        .catch(error => console.error('Error:', error));
    });
});


// like/ unlike //Kate 10/28/24
document.querySelectorAll('.like-button, .unlike-button').forEach(button => {
    button.addEventListener('click', function() {
        const postId = this.getAttribute('data-postid');
        const action = this.getAttribute('data-action');
        const formData = new FormData();
        formData.append('postID', postId);
        formData.append('action', action);

        fetch('like.php', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            if (data.status === 'success' || data.status === 'duplicate') {
                // Change the button's icon and action (like/unlike)
                if (action === 'like') {
                    this.innerHTML = "<i class='fa-solid fa-heart'></i> ";
                    this.setAttribute('data-action', 'unlike');
                } else {
                    this.innerHTML = "<i class='fa-regular fa-heart'></i> ";
                    this.setAttribute('data-action', 'like');
                }

                // Update the like count on the page
                const likeCountElem = document.getElementById(`like-count-${postId}`);
                if (likeCountElem) {
                    let currentLikeCount = parseInt(likeCountElem.textContent) || 0;

                    // Adjust like count based on action (like or unlike)
                    if (action === 'like') {
                        likeCountElem.textContent = currentLikeCount + 1;
                    } else if (action === 'unlike') {
                        likeCountElem.textContent = currentLikeCount - 1;
                    }
                }
            }
        })
        .catch(error => console.error('Error:', error));
    });
});

