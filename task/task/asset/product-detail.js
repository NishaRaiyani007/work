

        function openImageModal() {
            let mainImageSrc = document.getElementById('main-image').src;
            document.getElementById('modal-image').src = mainImageSrc;
            var imageModal = new bootstrap.Modal(document.getElementById('imageModal'));
            imageModal.show();
        }

        function changeImage(imageSrc) {
            document.getElementById('main-image').src = imageSrc;
            openImageModal();
        }
        // Dynamic total price update based on quantity
        $(document).ready(function () {
            $('#quantity').on('change', function () {
                let price = 100; // example price
                let quantity = $(this).val();
                let totalPrice = price * quantity;
                $('#total-price').text(totalPrice.toFixed(2));
            });

            // Initialize Slick Slider for Thumbnails

        });

        $(document).ready(function () {
            $('.thumbnail-gallery').slick({
                slidesToShow: 4,  // Number of thumbnails to show at once
                slidesToScroll: 1,  // How many thumbnails to scroll at once
                infinite: false,  // Infinite scrolling
                arrows: false,  // Show navigation arrows
                dots: false,  // No pagination dots
                responsive: [
                    {
                        breakpoint: 768,  // For tablets and phones
                        settings: {
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 480,  // For smaller phones
                        settings: {
                            slidesToShow: 3,  // Show 1 thumbnail at once
                            slidesToScroll: 1
                        }
                    }
                ]
            });
        });

        $('#review-form').on('submit', function (e) {
            e.preventDefault(); // Prevent form from submitting and refreshing the page

            let name = $('#review-name').val();
            let rating = $('#review-rating').val();
            let comment = $('#review-comment').val();

            if (name && rating && comment) {
                // Create a new review block
                let newReview = `
        <div class="review mb-3">
            <h5>${name}</h5>
            <p>Rating: ${'★'.repeat(rating)}${'☆'.repeat(5 - rating)}</p>
            <p>${comment}</p>
        </div>
        `;

                // Append the new review to the reviews container
                $('#reviews-container').append(newReview);

                // Clear the form after submission
                $('#review-form')[0].reset();
            } else {
                alert('Please fill out all fields before submitting.');
            }
        });


