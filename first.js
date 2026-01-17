// Segmented Theme Toggle (Light / Dark / Auto)
document.addEventListener('DOMContentLoaded', () => {
    const themeButtons = document.querySelectorAll(
      '.theme-toggle-group .theme-option'
    );
    const html = document.documentElement;
  
    if (!themeButtons.length) return;
  
    function applyTheme(theme) {
      if (theme === 'auto') {
        const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
        html.setAttribute('data-theme', prefersDark ? 'dark' : 'light');
      } else {
        html.setAttribute('data-theme', theme);
      }
  
      // Save preference
      localStorage.setItem('theme', theme);
  
      // Update active state
      themeButtons.forEach(btn => btn.classList.remove('active'));
      document
        .querySelector(`.theme-option[data-theme="${theme}"]`)
        ?.classList.add('active');
    }
  
    // Load saved theme (default: auto)
    const savedTheme = localStorage.getItem('theme') || 'light';
    applyTheme(savedTheme);
  
    // Button click handling
    themeButtons.forEach(btn => {
      btn.addEventListener('click', () => {
        applyTheme(btn.dataset.theme);
      });
    });
  
    // Auto mode → follow system changes live
    window
      .matchMedia('(prefers-color-scheme: dark)')
      .addEventListener('change', () => {
        if (localStorage.getItem('theme') === 'auto') {
          applyTheme('auto');
        }
      });
  });
  


document.addEventListener('DOMContentLoaded', () => {
    // Mobile menu toggle
    const menuBtn = document.querySelector('.menu-btn');
    const navLinks = document.querySelector('.nav-links');
    
    if (menuBtn && navLinks) {
        menuBtn.addEventListener('click', () => {
            navLinks.classList.toggle('active');
            menuBtn.classList.toggle('active');

            
            // Prevent body scroll when menu is open
            if (navLinks.classList.contains('active')) {
                document.body.style.overflow = 'hidden';
            } else {
                document.body.style.overflow = 'auto';
            }
        });
        
        // Close menu when clicking on nav links
        navLinks.addEventListener('click', (e) => {
            if (e.target.tagName === 'A') {
                navLinks.classList.remove('active');
                menuBtn.classList.remove('active');
                document.body.style.overflow = 'auto';
            }
        });
        
        // Close menu when clicking outside
        document.addEventListener('click', (e) => {
            if (!menuBtn.contains(e.target) && !navLinks.contains(e.target)) {
                navLinks.classList.remove('active');
                menuBtn.classList.remove('active');
                document.body.style.overflow = 'auto';
            }
        });
    }

    // Smooth scrolling for navigation links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
                // Close mobile menu if open
                if (navLinks && navLinks.classList.contains('active')) {
                    navLinks.classList.remove('active');
                    menuBtn.classList.remove('active');
                    document.body.style.overflow = 'auto';
                }
            }
        });
    });

    // Typing animation for hero section
    const typingText = document.querySelector('.typing-text');
    if (typingText) {
        const text = typingText.textContent;
        typingText.textContent = '';
        let i = 0;
        
        function typeWriter() {
            if (i < text.length) {
                typingText.textContent += text.charAt(i);
                i++;
                setTimeout(typeWriter, 100);
            }
        }
        
        typeWriter();
    }

    // Scroll reveal animation
    const revealElements = document.querySelectorAll('.reveal');
    
    function reveal() {
        revealElements.forEach(element => {
            const windowHeight = window.innerHeight;
            const elementTop = element.getBoundingClientRect().top;
            const elementVisible = 150;
            
            if (elementTop < windowHeight - elementVisible) {
                element.classList.add('active');
            }
        });
    }
    
    window.addEventListener('scroll', reveal);
    reveal(); // Initial check

// Form submission handling
const contactForm = document.querySelector('.contact-form');
if (contactForm) {
    contactForm.addEventListener('submit', async (e) => {
        e.preventDefault();
        
        const formData = new FormData(contactForm);
        const data = Object.fromEntries(formData);
        
        try {
            alert('Message sent successfully!');
            contactForm.reset();
        } catch (error) {
            console.error('Error sending message:', error);
            alert('Failed to send message. Please try again.');
        }
    });
}
    // Project filter functionality
    const filterButtons = document.querySelectorAll('.filter-btn');
    const projectItems = document.querySelectorAll('.project-item');
    
    if (filterButtons.length && projectItems.length) {
        filterButtons.forEach(button => {
            button.addEventListener('click', () => {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                button.classList.add('active');
                
                const filterValue = button.getAttribute('data-filter');
                
                projectItems.forEach(item => {
                    if (filterValue === 'all' || item.classList.contains(filterValue)) {
                        item.style.display = 'block';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });
        });
    }

    // Skills progress animation
    const skillBars = document.querySelectorAll('.skill-bar');
    
    function animateSkillBars() {
        skillBars.forEach(bar => {
            const percentage = bar.getAttribute('data-percentage');
            bar.style.width = percentage + '%';
        });
    }
    
    // Animate skill bars when they come into view
    const skillsSection = document.querySelector('.skills');
    if (skillsSection) {
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    animateSkillBars();
                    observer.unobserve(entry.target);
                }
            });
        });
        
        observer.observe(skillsSection);
    }

    // Resume download button handler
    const resumeDownloadBtn = document.getElementById('resume-download-btn');
    if (resumeDownloadBtn) {
        resumeDownloadBtn.addEventListener('click', function(e) {
            e.preventDefault(); // Prevent default link behavior
            const pdfPath = 'CV_Shreyash_Lambat.pdf';
            
            // Try to fetch the file first to check if it exists
            fetch(pdfPath)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('File not found');
                    }
                    return response.blob();
                })
                .then(blob => {
                    // Create a download link
                    const url = window.URL.createObjectURL(blob);
                    const a = document.createElement('a');
                    a.href = url;
                    a.download = 'CV_Shreyash_Lambat.pdf';
                    document.body.appendChild(a);
                    a.click();
                    document.body.removeChild(a);
                    window.URL.revokeObjectURL(url);
                })
                .catch(error => {
                    console.error('Download error:', error);
                    alert('Resume file not found. Please make sure CV_Shreyash_Lambat.pdf is in the project folder.');
                    // Fallback: try direct download
                    window.open(pdfPath, '_blank');
                });
        });
    }
}); 