console.log("post.js loaded");

function openBoughtModal() {
    document.getElementById('boughtModal').style.display = 'block'; // Show the modal
    document.getElementById('modalOverlay').style.display = 'block'; // Show the overlay
    
    fetchBoughtItems();  // Call the function to fetch items
}

function fetchBoughtItems() {
    fetch('fetchBoughtItems.php')
        .then(response => response.json())
        .then(data => {
            const boughtCarousel = document.getElementById('boughtCarouselItems');
            boughtCarousel.innerHTML = '';  // Clear any existing items

            if (data.length === 0) {
                boughtCarousel.innerHTML = '<p>No items in your bought list.</p>';
            } else {
                data.forEach(item => {
                    const carouselItem = document.createElement('div');
                    carouselItem.classList.add('carousel-item');
                    
                    const img = document.createElement('img');
                    img.src = item.itemSrc;
                    img.alt = "Bought Item";
                    img.style = "width: 50px; height: 50px; cursor: pointer;"; // Add your styling
                    
                    img.addEventListener('click', function() {
                        document.getElementById('itemSrc').value = item.itemSrc;  // Set hidden field
                        closeBoughtModal();  // Close modal after selection
                    });
                    
                    carouselItem.appendChild(img);
                    boughtCarousel.appendChild(carouselItem);
                });
            }
        })
        .catch(error => console.error('Error fetching bought items:', error));
}
function confirmBoughtSelection() {
    const selectedItemSrc = document.getElementById('itemSrc').value;
    if (selectedItemSrc) {
        // Proceed with the selected item
        closeBoughtModal();  // Close the modal
    } else {
        alert('Please select an item.');
    }
}

