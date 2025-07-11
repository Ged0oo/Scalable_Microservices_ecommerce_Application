document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.add-to-cart');

    buttons.forEach(button => {
        button.addEventListener('click', function() {
            const productName = this.parentElement.querySelector('.card-title').textContent;
            alert(`Added ${productName} to cart!`);
            // Add actual cart logic here
        });
    });
});