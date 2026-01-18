/* Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Prevent horizontal scroll */
html {
  overflow-x: hidden;
  width: 100%;
  max-width: 100%;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
}

body {
  overflow-x: hidden;
  width: 100%;
  max-width: 100%;
  position: relative;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

/* Touch-friendly tap targets */
a, button {
  -webkit-tap-highlight-color: rgba(0, 255, 255, 0.3);
  min-height: 44px;
  min-width: 44px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}

:root {
  --bg-primary: #0B0F19;
  --bg-secondary: #111827;
  --accent: #22C55E;
  --text-primary: #E5E7EB;
  --text-secondary: #9CA3AF;
  --border-color: #1F2937;
  --shadow: rgba(0, 0, 0, 0.3);
}

/* Light Theme */
[data-theme="light"] {
  --bg-primary: #FFFFFF;
  --bg-secondary: #F9FAFB;
  --accent: #2563EB;
  --text-primary: #111827;
  --text-secondary: #4B5563;
  --border-color: #E5E7EB;
  --shadow: rgba(0, 0, 0, 0.1);
}

/* Body Style */
body {
  margin: 0;
  background-color: var(--bg-primary);
  color: var(--text-primary);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  transition: background-color 0.3s ease, color 0.3s ease;
  width: 100%;
  max-width: 100vw;
  overflow-x: hidden;
}

/* Navbar */
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: var(--bg-primary);
  padding: 20px 40px;
  box-shadow: 0 4px 8px var(--shadow);
  position: sticky;
  top: 0;
  z-index: 1000;
  border-bottom: 1px solid var(--border-color);
}

/* Left Side Heading */
.nav-left h1 {
  font-size: 24px;
  font-family: 'Poppins', sans-serif;
}

/* Logo Link Styling */
.logo-link {
  color: var(--text-primary);
  text-decoration: none;
  transition: color 0.3s ease;
}

.logo-link:hover {
  color: var(--accent);
}

/* Right Side Navigation */
.nav-right {
  display: flex;
  gap: 30px;
  align-items: center;
  justify-content: space-between;
}

.nav-links {
  display: flex;
  gap: 30px;
  align-items: center;
}

.nav-right a {
  color: var(--text-primary);
  text-decoration: none;
  font-weight: 500;
  position: relative;
  transition: color 0.3s ease;
}

.nav-right a::after {
  content: '';
  position: absolute;
  width: 0%;
  height: 2px;
  background: var(--accent);
  left: 0;
  bottom: -4px;
  transition: width 0.3s;
}

.nav-right a:hover {
  color: var(--accent);
}

.nav-right a:hover::after {
  width: 100%;
}


.nav-right a.active {
  color: var(--accent);
  font-weight: 600;
}



/* Mobile Menu Button */
.menu-btn {
  display: none;
  flex-direction: column;
  background: none;
  border: none;
  cursor: pointer;
  padding: 5px;
  z-index: 1001;
}

.menu-btn span {
  width: 25px;
  height: 3px;
  background: var(--text-primary);
  margin: 3px 0;
  transition: 0.3s;
  border-radius: 2px;
}

.menu-btn.active span:nth-child(1) {
  transform: rotate(-45deg) translate(-5px, 6px);
}

.menu-btn.active span:nth-child(2) {
  opacity: 0;
}

.menu-btn.active span:nth-child(3) {
  transform: rotate(45deg) translate(-5px, -6px);
}

/* Mobile Responsive Styles */
@media (max-width: 768px) {
  /* Ensure all containers fit mobile width */
  * {
    max-width: 100vw;
    box-sizing: border-box;
  }
  
  html {
    overflow-x: hidden;
  }
  
  body {
    overflow-x: hidden;
    width: 100%;
  }
  
  .navbar {
    padding: 10px 15px;
    width: 100%;
    max-width: 100vw;
    position: sticky;
    top: 0;
  }
  
  .nav-left h1 {
    font-size: 16px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  
  .nav-right {
    gap: 15px;
  }
  
  .nav-links {
    display: none;
  }
  
  .menu-btn {
    display: flex;
    z-index: 1002;
  }
  
  .nav-links.active {
    display: flex;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    width: 100%;
    height: 100vh;
    background: var(--bg-primary);
    backdrop-filter: blur(10px);
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 25px;
    transition: all 0.3s ease;
    z-index: 1001;
    padding: 20px;
  }
  
  .nav-links.active a {
    font-size: 22px;
    font-weight: 600;
    color: var(--text-primary);
    padding: 10px 20px;
    width: 100%;
    text-align: center;
    border-bottom: 1px solid var(--border-color);
  }
  
  .nav-links.active a:hover {
    color: var(--accent);
    background: var(--bg-secondary);
  }
  
  .theme-btn {
    position: static !important;
    top: 16px !important;
    right: 60px !important;
    z-index: 1001 !important;
    font-size: 18px;
    background: var(--bg-secondary);
    box-shadow: 0 2px 8px var(--shadow);
  }
  
  /* Hero section mobile optimization */
  .hero {
    width: 100%;
    max-width: 100vw;
    padding: 40px 15px;
    min-height: auto;
  }
  
  .hero-content {
    width: 100%;
    max-width: 100%;
    padding: 0;
  }
  
  .hero h1 {
    font-size: 32px;
    line-height: 1.2;
    margin-bottom: 12px;
  }
  
  .hero .tagline {
    font-size: 16px;
    margin-bottom: 15px;
  }
  
  .hero-desc {
    font-size: 14px;
    line-height: 1.5;
    margin-bottom: 25px;
    padding: 0 10px;
  }
  
  .hero-buttons {
    flex-direction: column;
    gap: 12px;
    width: 100%;
    align-items: center;
  }
  
  .btn-primary,
  .btn-secondary {
    width: 90%;
    max-width: 250px;
    padding: 12px 20px;
    font-size: 14px;
  }
}




/* Hero Section */

.hero {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  color: var(--text-primary);
  text-align: center;
  padding: 60px 20px;
  border-radius: 20px;  
  max-width: 700px;
  margin: 0 auto;
}


.hero-content {
  max-width: 100%;
}

.hero h1 {
  font-size: 48px;
  font-weight: bold;
  margin-bottom: 10px;
  color: var(--text-primary);
}

/* Mobile Hero Section */
@media (max-width: 768px) {
  .hero {
    min-height: 50vh;
    padding: 20px 15px;
  }
  
  .hero h1 {
    font-size: 28px;
    line-height: 1.1;
    margin-bottom: 8px;
  }
  
  .hero .tagline {
    font-size: 16px;
    margin-bottom: 10px;
  }
  
  .hero-desc {
    font-size: 13px;
    margin-bottom: 20px;
    max-width: 100%;
    line-height: 1.4;
  }
  
  .hero-buttons {
    flex-direction: column;
    gap: 12px;
    align-items: center;
  }
  
  .btn-primary,
  .btn-secondary {
    width: 180px;
    padding: 10px 16px;
    font-size: 13px;
  }
}

.hero .highlight {
  color: var(--accent);
  font-weight: 600;
}

.hero .tagline {
  font-size: 22px;
  margin-bottom: 20px;
  font-weight: 500;
  color: var(--accent);
}

.hero-desc {
  font-size: 16px;
  line-height: 1.6;
  margin-bottom: 30px;
  color: var(--text-secondary);
  max-width: 90%;
  margin-left: auto;
  margin-right: auto;
}

.hero-buttons {
  display: flex;
  justify-content: center;
  gap: 20px;
  flex-wrap: wrap;
}

.btn-primary,
.btn-secondary {
  padding: 12px 28px;
  border: none;
  text-decoration: none;
  font-size: 16px;
  font-weight: 600;
  border-radius: 12px;
  transition: all 0.3s ease;
  cursor: pointer;
  box-shadow: 0 0 10px transparent;
}

.btn-primary {
  background-color: var(--accent);
  color: var(--bg-primary);
  border: none;
  transition: all 0.2s ease;
}

.btn-primary:hover {
  background-color: var(--accent);
  opacity: 0.9;
  transform: translateY(-2px);
}

.btn-secondary {
  background-color: transparent;
  border: 2px solid var(--border-color);
  color: var(--accent);
  transition: all 0.2s ease;
}

.btn-secondary:hover {
  background-color: var(--accent);
  color: var(--bg-primary);
  transform: translateY(-2px);
}


/* About Me Section */
.about {
  padding: 80px 20px;
  max-width: 1000px;
  margin: 0 auto;
  display: flex;
  gap: 40px;
  align-items: center;
  flex-wrap: wrap;
}

.about-container {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 40px;
  width: 100%;
}

.about-image {
  flex: 1 1 300px;
  max-width: 350px;
  background: var(--bg-secondary);
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 30px;
  border: 1px solid var(--border-color);
  border-radius: 8px;
}

.about-image img {
  width: 80%;
  max-width: 250px;
  border-radius: 20px;
  object-fit: cover;
  box-shadow: 0 8px 20px var(--shadow);
  border: 1px solid var(--border-color);
}

.about-text {
  flex: 1 1 500px;
  padding: 40px;
  color: var(--text-primary);
}

.about-text h2 {
  font-size: 2.8rem;
  color: var(--text-primary);
  margin-bottom: 20px;
}

.about-text p {
  font-size: 1.1rem;
  line-height: 1.8;
  margin-bottom: 15px;
  color: var(--text-secondary);
}

.about-text .highlight {
  color: var(--accent);
  font-weight: 600;
}



/* About Section container */
.about-section {
  padding: 100px 20px;
  display: flex;
  justify-content: center;
  
}

/* Frosted glass card */
.about-card {
  position: relative;
  display: flex;
  flex-wrap: wrap;
  max-width: 1000px;
  background: var(--bg-secondary);
  border: 1px solid var(--border-color);
  box-shadow: 0 4px 12px var(--shadow);
  border-radius: 8px;
  overflow: visible;
  animation: popFade 1s ease;
  z-index: 1;
}

/* Animation */
@keyframes popFade {
  0% {
    opacity: 0;
    transform: scale(0.95);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}

/* Responsive for smaller screens */
@media (max-width: 768px) {
  .about-section {
    padding: 40px 15px;
    width: 100%;
    max-width: 100vw;
  }
  
  .about-card {
    flex-direction: column;
    align-items: center;
    max-width: calc(100% - 16px);
    margin: 0 8px;
    width: calc(100% - 16px);
    padding: 20px 15px;
  }

  .about-image {
    padding: 15px;
    max-width: 100%;
    width: 100%;
    flex: 1 1 100%;
  }
  
  .about-image img {
    width: 100%;
    max-width: 240px;
    height: auto;
    display: block;
    margin: 0 auto;
  }

  .about-text {
    padding: 15px 10px;
    flex: 1 1 100%;
    text-align: center;
    width: 100%;
  }

  .about-text h2 {
    font-size: 1.6rem;
    margin-bottom: 15px;
  }
  
  .about-text p {
    font-size: 0.95rem;
    line-height: 1.5;
    margin-bottom: 12px;
    text-align: left;
  }
}

/* Scan effects removed */


/* skills section */

.skills-section {
  padding: 80px 20px;
  text-align: center;
  color: var(--text-primary);
}

.skills-header h2 {
  font-size: 2.5rem;
  color: var(--text-primary);
  margin-bottom: 10px;
}

.skills-header p {
  font-size: 1.6rem;
  margin-bottom: 40px;
  color: var(--text-secondary);
}

.skills-cards {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 40px;
  flex-wrap: wrap;
}

/* Mobile Skills Section */
@media (max-width: 768px) {
  .skills-section {
    padding: 40px 15px;
    width: 100%;
    max-width: 100vw;
  }
  
  .skills-header h2 {
    font-size: 1.8rem;
    margin-bottom: 8px;
  }
  
  .skills-header p {
    font-size: 1.1rem;
    margin-bottom: 25px;
  }
  
  .skills-cards {
    flex-direction: column;
    gap: 15px;
    align-items: center;
    width: 100%;
  }
  
  .flip-card-inner {
    width: 260px;
    height: 180px;
    max-width: 90vw;
  }
  
  .flip-card-front img {
    width: 45px;
    height: 45px;
  }
  
  .flip-card-front h3 {
    font-size: 1rem;
  }
  
  .flip-card-back {
    font-size: 0.85rem;
    padding: 12px;
  }
}


.flip-card {
  background: transparent;
  perspective: 1000px;
}

.flip-card-inner {
  width: 220px;
  height: 260px;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  position: relative;
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
  box-shadow: 0 4px 12px var(--shadow);
}

.flip-card:hover {
  border-color: var(--border-color);
}

.flip-card-front,
.flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  border-radius: 15px;
  backface-visibility: hidden;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 20px;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
}


.flip-card-front {
  background: var(--bg-secondary);
  color: var(--text-primary);
  gap: 15px;
  border: 1px solid var(--border-color);
}
.flip-card-front h3 {
  text-align: center;
  font-size: 1.05rem;
  line-height: 1.4;
  max-width: 160px;
  margin: 12px auto 0;
}

.flip-card-front img {
  width: 60px;
  height: 60px;
}

.flip-card-front h3 {
  margin-top: 10px;
  font-size: 1.3rem;
  color: var(--text-primary);
}


.flip-card-back {
  background: var(--bg-secondary);
  color: var(--text-secondary);
  transform: rotateY(180deg);
  font-size: 0.95rem;
  line-height: 1.4;
}

/* HOWER EFFECT FOR SKILLS FILLCARD */
.flip-card {
  position: relative;
  border-radius: 10px;
  overflow: hidden;
  transition: transform 0.3s;
}

.flip-card {
  position: relative;
  overflow: hidden;
  border-radius: 12px;
  z-index: 1;
}

.flip-card::before,
.flip-card::after,
.flip-card .border-top,
.flip-card .border-bottom {
  content: '';
  position: absolute;
  background: var(--accent);
  z-index: 2;
  pointer-events: none;
  opacity: 0;
}

/* Top border */
.flip-card .border-top {
  top: 0;
  left: 0;
  width: 0%;
  height: 2px;
}

/* Right border */
.flip-card::before {
  top: 0;
  right: 0;
  width: 2px;
  height: 0%;
}

/* Bottom border */
.flip-card .border-bottom {
  bottom: 0;
  right: 0;
  width: 0%;
  height: 2px;
}

/* Left border */
.flip-card::after {
  bottom: 0;
  left: 0;
  width: 2px;
  height: 0%;
}

/* Hover animation */
.flip-card:hover .border-top {
  animation: grow-top 0.4s forwards;
  opacity: 1;
}

.flip-card:hover::before {
  animation: grow-right 0.4s 0.4s forwards;
  opacity: 1;
}

.flip-card:hover .border-bottom {
  animation: grow-bottom 0.4s 0.8s forwards;
  opacity: 1;
}

.flip-card:hover::after {
  animation: grow-left 0.4s 1.2s forwards;
  opacity: 1;
}

/* Keyframes */
@keyframes grow-top {
  to {
    width: 100%;
  }
}

@keyframes grow-right {
  to {
    height: 100%;
  }
}

@keyframes grow-bottom {
  to {
    width: 100%;
    right: 0;
    left: auto;
  }
}

@keyframes grow-left {
  to {
    height: 100%;
  }
}


/* my project */


/*  Custom Projects Section */
.projects-section {
  padding: 80px 20px 40px 20px;
  text-align: center;
}
.projects-header h2 {
  font-size: 2.8rem;
  color: var(--text-primary);
  margin-bottom: 10px;
  font-weight: bold;
}
.projects-header p {
  font-size: 1.3rem;
  color: var(--text-secondary);
  margin-bottom: 40px;
}
.projects-container {
  display: flex;
  flex-wrap: wrap;
  gap: 40px;
  justify-content: center;
}
.project-box {
  background: var(--bg-secondary);
  border-radius: 8px;
  box-shadow: 0 4px 12px var(--shadow);
  padding: 36px 32px 28px 32px;
  min-width: 320px;
  max-width: 420px;
  flex: 1 1 320px;
  text-align: left;
  transition: transform 0.3s, box-shadow 0.3s;
  border: 1px solid var(--border-color);
}
.project-box:hover {
  transform: translateY(-4px);
  border-color: var(--border-color);
  box-shadow: 0 6px 16px var(--shadow);
}
.project-content h3 {
  color: var(--accent);
  font-size: 1.5rem;
  margin-bottom: 12px;
  font-weight: bold;
}
.project-content p {
  color: var(--text-secondary);
  margin-bottom: 18px;
  font-size: 1.08rem;
}
.project-tech {
  margin-bottom: 18px;
}
.project-tech span {
  display: inline-block;
  background: var(--bg-primary);
  color: var(--text-secondary);
  border: 1px solid var(--border-color);
  border-radius: 4px;
  padding: 4px 16px;
  margin: 0 6px 6px 0;
  font-size: 0.95rem;
}
.project-links {
  margin-top: 10px;
}
.project-links .btn-primary, 
.project-links .btn-secondary {
  display: inline-block;
  border-radius: 4px;
  padding: 10px 28px;
  margin-right: 12px;
  font-weight: 600;
  font-size: 1rem;
  text-decoration: none;
  transition: all 0.2s ease;
}
@media (max-width: 900px) {
  .projects-container {
    flex-direction: column;
    align-items: center;
  }
  .project-box {
    max-width: 95vw;
    min-width: unset;
  }
}

@media (max-width: 768px) {
  .projects-section {
    padding: 40px 12px;
    width: 100%;
    max-width: 100vw;
  }
  
  .projects-header h2 {
    font-size: 1.8rem;
    margin-bottom: 8px;
  }
  
  .projects-header p {
    font-size: 1rem;
    margin-bottom: 25px;
  }
  
  .projects-container {
    width: 100%;
  }
  
  .project-box {
    padding: 20px 15px;
    margin: 0 8px;
    width: calc(100% - 16px);
    max-width: calc(100% - 16px);
  }
  
  .project-content h3 {
    font-size: 1.2rem;
    margin-bottom: 10px;
  }
  
  .project-content p {
    font-size: 0.9rem;
    margin-bottom: 15px;
  }
  
  .project-tech {
    margin-bottom: 15px;
  }
  
  .project-tech span {
    font-size: 0.8rem;
    padding: 3px 10px;
  }
}

/* Custom Certifications Section */
.certifications-section {
  padding: 80px 20px 40px 20px;
  text-align: center;
}

.certifications-header h2 {
  font-size: 2.8rem;
  color: var(--text-primary);
  margin-bottom: 10px;
  font-weight: bold;
}

.certifications-header p {
  font-size: 1.3rem;
  color: var(--text-secondary);
  margin-bottom: 40px;
}

.certifications-container {
  display: flex;
  flex-wrap: wrap;
  gap: 40px;
  justify-content: center;
  max-width: 1200px;
  margin: 0 auto;
}

.certification-box {
  background: var(--bg-secondary);
  border-radius: 8px;
  box-shadow: 0 4px 12px var(--shadow);
  padding: 36px 32px 28px 32px;
  min-width: 320px;
  max-width: 380px;
  flex: 1 1 320px;
  text-align: left;
  transition: transform 0.3s, box-shadow 0.3s;
  border: 1px solid var(--border-color);
  display: flex;
  flex-direction: column;
  align-items: center;
  position: relative;
  overflow: visible;
}

.certification-box::before {
  display: none;
}

.certification-box:hover {
  transform: translateY(-4px);
  border-color: var(--border-color);
  box-shadow: 0 6px 16px var(--shadow);
}

.certification-icon {
  font-size: 3.5rem;
  color: var(--accent);
  margin-bottom: 20px;
  transition: transform 0.3s;
}

.certification-box:hover .certification-icon {
  transform: scale(1.05);
}

.certification-content {
  width: 100%;
  text-align: center;
}

.certification-content h3 {
  color: var(--text-primary);
  font-size: 1.5rem;
  margin-bottom: 12px;
  font-weight: bold;
}

.certification-issuer {
  color: var(--accent);
  font-size: 1.1rem;
  font-weight: 600;
  margin-bottom: 8px;
}

.certification-date {
  color: var(--text-secondary);
  font-size: 0.95rem;
  margin-bottom: 16px;
  font-style: italic;
}

.certification-desc {
  color: var(--text-secondary);
  margin-bottom: 20px;
  font-size: 1.05rem;
  line-height: 1.6;
  text-align: left;
}

.certification-content .btn-secondary {
  margin-top: 10px;
  display: inline-block;
  visibility: visible;
  opacity: 1;
}

/* Tablet Styles */
@media (max-width: 1024px) and (min-width: 769px) {
  .hero h1 {
    font-size: 40px;
  }
  
  .about-card {
    max-width: 95%;
  }
  
  .project-box,
  .certification-box,
  .resume-card {
    max-width: 45%;
  }
  
  .contact-container {
    flex-direction: row;
    gap: 30px;
  }
  
  .contact-info,
  .contact-form {
    max-width: 48%;
  }
}

@media (max-width: 900px) {
  .certifications-container {
    flex-direction: column;
    align-items: center;
  }
  
  .certification-box {
    max-width: 95vw;
    min-width: unset;
  }
  
  .projects-container {
    flex-direction: column;
    align-items: center;
  }
  
  .project-box {
    max-width: 95vw;
  }
  
  .resume-container {
    flex-direction: column;
    align-items: center;
  }
  
  .resume-card {
    max-width: 95vw;
  }
}

@media (max-width: 768px) {
  .certifications-section {
    padding: 40px 12px;
    width: 100%;
    max-width: 100vw;
  }
  
  .certifications-header h2 {
    font-size: 1.8rem;
    margin-bottom: 8px;
  }
  
  .certifications-header p {
    font-size: 1rem;
    margin-bottom: 25px;
  }
  
  .certifications-container {
    width: 100%;
  }
  
  .certification-box {
    padding: 20px 15px;
    margin: 0 8px;
    width: calc(100% - 16px);
    max-width: calc(100% - 16px);
  }
  
  .certification-icon {
    font-size: 2.5rem;
    margin-bottom: 15px;
  }
  
  .certification-content h3 {
    font-size: 1.2rem;
    margin-bottom: 10px;
  }
  
  .certification-issuer {
    font-size: 1rem;
  }
  
  .certification-date {
    font-size: 0.85rem;
  }
  
  .certification-desc {
    font-size: 0.9rem;
    margin-bottom: 15px;
  }
  
  .certification-content .btn-secondary {
    display: block;
    width: 100%;
    max-width: 200px;
    margin: 15px auto 0;
    padding: 12px 20px;
    font-size: 14px;
    text-align: center;
    visibility: visible;
    opacity: 1;
  }
}

/* Custom Resume Section*/
.resume-section {
  padding: 80px 20px 40px 20px;
  text-align: center;
}
.resume-header h2 {
  font-size: 2.8rem;
  color: var(--text-primary);
  margin-bottom: 10px;
  font-weight: bold;
}
.resume-header p {
  font-size: 1.3rem;
  color: var(--text-secondary);
  margin-bottom: 40px;
}
.resume-container {
  display: flex;
  flex-wrap: wrap;
  gap: 40px;
  justify-content: center;
}
.resume-card {
  background: var(--bg-secondary);
  border-radius: 8px;
  box-shadow: 0 4px 12px var(--shadow);
  padding: 36px 32px 28px 32px;
  min-width: 320px;
  max-width: 420px;
  flex: 1 1 320px;
  text-align: left;
  border: 1px solid var(--border-color);
  position: relative;
}
.resume-card h3 {
  color: var(--accent);
  font-size: 1.2rem;
  margin-bottom: 18px;
  font-weight: bold;
}
.timeline {
  margin-left: 0;
}
.timeline-item {
  display: flex;
  align-items: flex-start;
  margin-bottom: 18px;
}
.timeline-dot {
  width: 14px;
  height: 14px;
  background: var(--accent);
  border-radius: 50%;
  border: 2px solid var(--bg-secondary);
  margin-right: 18px;
  margin-top: 6px;
  flex-shrink: 0;
}
.timeline-content h4 {
  color: var(--text-primary);
  font-size: 1.08rem;
  margin-bottom: 4px;
  font-weight: 600;
}
.timeline-date {
  color: var(--accent);
  font-size: 1rem;
  margin-bottom: 8px;
}
.timeline-content p {
  color: var(--text-secondary);
  margin-bottom: 0;
  font-size: 1.05rem;
}
.resume-download {
  margin-top: 32px;
}
.resume-download .btn-primary {
  border-radius: 4px;
  padding: 12px 36px;
  font-weight: 600;
  font-size: 1.1rem;
  text-decoration: none;
  transition: all 0.2s ease;
  display: inline-block;
}
.resume-download .btn-primary:hover {
  opacity: 0.9;
  transform: translateY(-2px);
}
@media (max-width: 900px) {
  .resume-container {
    flex-direction: column;
    align-items: center;
  }
  .resume-card {
    max-width: 95vw;
    min-width: unset;
  }
}

@media (max-width: 768px) {
  .resume-section {
    padding: 40px 12px;
    width: 100%;
    max-width: 100vw;
  }
  
  .resume-header h2 {
    font-size: 1.8rem;
    margin-bottom: 8px;
  }
  
  .resume-header p {
    font-size: 1rem;
    margin-bottom: 25px;
  }
  
  .resume-container {
    width: 100%;
  }
  
  .resume-card {
    padding: 20px 15px;
    margin: 0 8px;
    width: calc(100% - 16px);
    max-width: calc(100% - 16px);
  }
  
  .resume-card h3 {
    font-size: 1.1rem;
    margin-bottom: 15px;
  }
  
  .timeline-content h4 {
    font-size: 0.95rem;
  }
  
  .timeline-content p {
    font-size: 0.9rem;
  }
  
  .timeline-item {
    margin-bottom: 15px;
  }
}

/* === Custom Contact Section === */
.contact-section {
  padding: 80px 20px 40px 20px;
  text-align: center;
}
.contact-header h2 {
  font-size: 2.8rem;
  color: var(--text-primary);
  margin-bottom: 10px;
  font-weight: bold;
}
.contact-header p {
  font-size: 1.3rem;
  color: var(--text-secondary);
  margin-bottom: 40px;
}
.contact-container {
  display: flex;
  gap: 40px;
  justify-content: center;
  align-items: flex-start;
  flex-wrap: wrap;
  max-width: 1100px;
  margin: 0 auto;
}
.contact-info {
  background: var(--bg-secondary);
  border-radius: 8px;
  box-shadow: 0 4px 12px var(--shadow);
  padding: 36px 32px 28px 32px;
  min-width: 300px;
  max-width: 350px;
  flex: 1 1 300px;
  text-align: left;
  border: 1px solid var(--border-color);
  display: flex;
  flex-direction: column;
  gap: 32px;
}
.contact-item {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 6px;
}
.contact-item i {
  color: var(--accent);
  font-size: 2rem;
  margin-bottom: 6px;
}
.contact-item h3 {
  color: var(--text-primary);
  font-size: 1.1rem;
  font-weight: bold;
  margin-bottom: 2px;
}
.contact-item p, .contact-item a {
  color: var(--text-secondary);
  font-size: 1.05rem;
  text-decoration: none;
  transition: color 0.2s;
}
.contact-link:hover {
  color: var(--accent);
  text-decoration: underline;
}
.contact-form {
  background: var(--bg-secondary);
  border-radius: 8px;
  box-shadow: 0 4px 12px var(--shadow);
  padding: 36px 32px 28px 32px;
  min-width: 320px;
  max-width: 420px;
  flex: 1 1 320px;
  text-align: left;
  border: 1px solid var(--border-color);
  display: flex;
  flex-direction: column;
  gap: 18px;
}
.form-group {
  margin-bottom: 0;
}
.form-group input,
.form-group textarea {
  width: 100%;
  padding: 12px 16px;
  border: 1px solid var(--border-color);
  border-radius: 4px;
  background: var(--bg-primary);
  color: var(--text-primary);
  font-size: 1rem;
  margin-bottom: 0;
  transition: border-color 0.2s ease;
  font-family: inherit;
}
.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: var(--border-color);
  background: var(--bg-primary);
}
.form-group textarea {
  min-height: 120px;
  resize: vertical;
}
.contact-form .btn-primary {
  margin-top: 10px;
  width: 100%;
  border-radius: 4px;
  padding: 12px 0;
  font-weight: 600;
  font-size: 1.1rem;
  text-decoration: none;
  transition: all 0.2s ease;
  display: inline-block;
}
.contact-form .btn-primary:hover {
  opacity: 0.9;
  transform: translateY(-2px);
}
@media (max-width: 900px) {
  .contact-container {
    flex-direction: column;
    align-items: center;
    gap: 24px;
  }
  .contact-info, .contact-form {
    max-width: 95vw;
    min-width: unset;
  }
}

@media (max-width: 768px) {
  .contact-section {
    padding: 40px 12px;
    width: 100%;
    max-width: 100vw;
  }
  
  .contact-header h2 {
    font-size: 1.8rem;
    margin-bottom: 8px;
  }
  
  .contact-header p {
    font-size: 1rem;
    margin-bottom: 25px;
  }
  
  .contact-container {
    gap: 15px;
    width: 100%;
  }
  
  .contact-info, .contact-form {
    padding: 20px 15px;
    margin: 0 10px;
    width: 100%;
    max-width: 100%;
  }
  
  .contact-info {
    gap: 20px;
  }
  
  .contact-item i {
    font-size: 1.3rem;
  }
  
  .contact-item h3 {
    font-size: 0.95rem;
  }
  
  .contact-item p, .contact-item a {
    font-size: 0.9rem;
  }
  
  .form-group {
    margin-bottom: 15px;
  }
  
  .form-group input,
  .form-group textarea {
    font-size: 0.9rem;
    padding: 8px 12px;
    width: 100%;
    max-width: 100%;
  }
}

/*  Footer Section  */
.footer-content {
  max-width: 700px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.footer .social-links {
  margin: 18px 0 10px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 12px;
}
.footer .social-links a {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 38px;
  height: 38px;
  border-radius: 4px;
  background: var(--bg-primary);
  border: 1px solid var(--border-color);
  color: var(--text-secondary);
  margin: 0 8px;
  font-size: 1.3rem;
  transition: all 0.2s ease;
}
.footer .social-links a:hover {
  background: var(--bg-secondary);
  border-color: var(--border-color);
  color: var(--accent);
}
@media (max-width: 600px) {
  .projects-section, .resume-section {
    padding: 40px 5vw 20px 5vw;
  }
  .project-box, .resume-card {
    padding: 20px 10px;
  }
}

/* Large Phone Screens (6.5-7 inch phones like iPhone Pro Max, Galaxy Ultra) */
@media (max-width: 450px) and (min-width: 400px) {
  .hero h1 {
    font-size: 30px;
    line-height: 1.2;
  }
  
  .hero .tagline {
    font-size: 15px;
  }
  
  .hero-desc {
    font-size: 14px;
    padding: 0 8px;
  }
  
  .navbar {
    padding: 10px 15px;
  }
  
  .nav-left h1 {
    font-size: 15px;
  }
  
  .theme-btn {
    position: fixed !important;
    top: 16px !important;
    right: 55px !important;
    z-index: 1001 !important;
    font-size: 17px;
    background: var(--bg-secondary);
    box-shadow: 0 2px 8px var(--shadow);
  }
  
  .about-card {
    padding: 25px 18px;
  }
  
  .about-text h2 {
    font-size: 1.7rem;
  }
  
  .about-text p {
    font-size: 0.98rem;
  }
  
  .skills-header h2,
  .projects-header h2,
  .certifications-header h2,
  .resume-header h2,
  .contact-header h2 {
    font-size: 1.7rem;
  }
  
  .flip-card-inner {
    width: 100%;
    max-width: 300px;
    height: 190px;
  }
  
  .project-box,
  .certification-box,
  .resume-card {
    padding: 22px 18px;
    margin: 0 5px;
  }
  
  .project-content h3,
  .certification-content h3 {
    font-size: 1.15rem;
  }
  
  .project-content p,
  .certification-desc {
    font-size: 0.88rem;
    line-height: 1.5;
  }
  
  .certification-content .btn-secondary {
    max-width: 200px;
    padding: 11px 18px;
    font-size: 13.5px;
  }
  
  .contact-info,
  .contact-form {
    padding: 25px 18px;
  }
  
  .btn-primary,
  .btn-secondary {
    max-width: 240px;
    padding: 11px 18px;
    font-size: 13.5px;
  }
}

/* Additional Mobile Optimizations for Small Screens */
@media (max-width: 480px) {
  .navbar {
    padding: 8px 12px;
  }
  
  .nav-left h1 {
    font-size: 14px;
  }
  
  .theme-btn {
    position: static !important;
    top: 16px !important;
    right: 50px !important;
    z-index: 1001 !important;
    font-size: 16px;
    background: var(--bg-secondary);
    box-shadow: 0 2px 8px var(--shadow);
  }
  
  .hero {
    min-height: auto;
    padding: 30px 12px;
  }
  
  .hero h1 {
    font-size: 28px;
    line-height: 1.1;
  }
  
  .hero .tagline {
    font-size: 14px;
    margin-bottom: 12px;
  }
  
  .hero-desc {
    font-size: 13px;
    padding: 0 5px;
  }
  
  .btn-primary,
  .btn-secondary {
    width: 100%;
    max-width: 220px;
    padding: 10px 16px;
    font-size: 13px;
  }
  
  .skills-section,
  .about-section,
  .projects-section,
  .certifications-section,
  .resume-section,
  .contact-section {
    padding: 30px 12px;
  }
  
  .skills-header h2,
  .projects-header h2,
  .certifications-header h2,
  .resume-header h2,
  .contact-header h2 {
    font-size: 1.5rem;
  }
  
  .skills-header p,
  .projects-header p,
  .certifications-header p,
  .resume-header p,
  .contact-header p {
    font-size: 0.9rem;
  }
  
  .flip-card-inner {
    width: 100%;
    max-width: 280px;
    height: 180px;
  }
  
  .flip-card-front h3 {
    font-size: 1.1rem;
  }
  
  .flip-card-back {
    font-size: 0.85rem;
    padding: 15px;
  }
  
  .project-box,
  .certification-box,
  .resume-card {
    padding: 18px 12px;
    margin: 0;
  }
  
  .project-content h3,
  .certification-content h3 {
    font-size: 1.1rem;
  }
  
  .project-content p,
  .certification-desc {
    font-size: 0.85rem;
    margin-bottom: 12px;
  }
  
  .certification-icon {
    font-size: 2rem;
  }
  
  .certification-content .btn-secondary {
    display: block !important;
    width: 100%;
    max-width: 180px;
    margin: 12px auto 0;
    padding: 10px 16px;
    font-size: 13px;
    text-align: center;
    visibility: visible !important;
    opacity: 1 !important;
    min-height: 44px;
  }
  
  .contact-container {
    flex-direction: column;
    gap: 20px;
  }
  
  .contact-info,
  .contact-form {
    width: 100%;
    max-width: 100%;
    padding: 20px 15px;
  }
  
  .form-group input,
  .form-group textarea {
    font-size: 14px;
    padding: 10px 12px;
  }
  
  .footer {
    padding: 20px 10px 12px 10px;
  }
  
  .footer .social-links {
    gap: 8px;
  }
  
  .footer .social-links a {
    width: 36px;
    height: 36px;
    font-size: 1.1rem;
    margin: 0 4px;
  }
  
  .resume-download .btn-primary {
    width: 100%;
    max-width: 250px;
    padding: 10px 20px;
    font-size: 1rem;
  }

}

/* Extra Small Devices */
@media (max-width: 320px) {
  .nav-left h1 {
    font-size: 12px;
  }
  
  .hero h1 {
    font-size: 24px;
  }
  
  .hero .tagline {
    font-size: 12px;
  }
  
  .hero-desc {
    font-size: 12px;
  }
  
  .skills-header h2,
  .projects-header h2,
  .certifications-header h2,
  .resume-header h2,
  .contact-header h2 {
    font-size: 1.3rem;
  }
  
  .flip-card-inner {
    width: 100%;
    max-width: 260px;
    height: 160px;
  }
  
  .project-box,
  .certification-box,
  .resume-card {
    padding: 15px 10px;
  }
}

.footer {
  background: var(--bg-secondary);
  color: var(--text-secondary);
  text-align: center;
  padding: 32px 10px 18px 10px;
  border-top: 1px solid var(--border-color);
  margin-top: 40px;
}

/* New-tongel button styles */


.fixed-theme-toggle {
  position: absolute;
  bottom: 16px;
  right: 16px;      
  left: auto;       
  z-index: 3000;
}



/* Pill container */
.theme-toggle-group {
  display: inline-flex;
  align-items: center;
  gap: 4px;               /* smaller gap */
  padding: 4px;           /* smaller padding */
  border-radius: 999px;
  background: var(--bg-secondary);
  border: 1px solid var(--border-color);
  box-shadow: 0 4px 12px var(--shadow); /* lighter shadow */

  width: auto;
  max-width: none;
  overflow: visible;
}

/* Buttons */
.theme-option {
  min-width: 28px;        /* smaller width */
  padding: 4px 10px;      /* smaller padding */
  border-radius: 999px;
  border: none;
  background: transparent;
  cursor: pointer;

  font-size: 12px;        /* smaller text */
  font-weight: 400;
  color: var(--text-primary);
  white-space: nowrap;

  transition: 0.35s ease-in-out 0.05s;
}


/* Light theme button */
.theme-option[data-theme="light"] {
  color: white; /* dark text */
}


/* Light theme variables */
[data-theme="light"] {
  --bg-hover: #d2dbe5;
}



.theme-option.active {
  background: #1e6bff;
  color: #ffffff;
}