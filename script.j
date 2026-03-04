const form = document.getElementById('contact-form');
const status = document.getElementById('form-status');

form.addEventListener('submit', function(e) {
    e.preventDefault();

    // Collect form data
    const name = form.name.value;
    const email = form.email.value;
    const message = form.message.value;

    // Simple validation (optional)
    if (!name || !email || !message) {
        status.textContent = "Please fill out all fields!";
        status.style.color = "red";
        return;
		
		
    }

    // Simulate sending message
    status.textContent = "Sending message...";
    status.style.color = "#3b82f6";

    setTimeout(() => {
        status.textContent = "Message sent successfully! 🎉";
        form.reset();
    }, 1500);
	//For Smooth scrolling
	document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});
});
