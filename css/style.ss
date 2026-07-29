/* --- Root Variables (Blue, White, Green + Glassmorphism) --- */
:root {
    --bg-main: #f0f4f9;
    --bg-glass: rgba(255, 255, 255, 0.7);
    --bg-glass-border: rgba(255, 255, 255, 0.8);
    --text-color: #1e293b;
    --text-muted: #64748b;
    --primary-blue: #2563eb;
    --primary-blue-hover: #1d4ed8;
    --primary-green: #059669;
    --primary-green-hover: #047857;
    --card-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.07);
    --nav-height: 70px;
    --font-sans: 'Inter', sans-serif;
    --font-urdu: 'Gulzar', serif;
}

[data-theme="dark"] {
    --bg-main: #0f172a;
    --bg-glass: rgba(30, 41, 59, 0.7);
    --bg-glass-border: rgba(255, 255, 255, 0.1);
    --text-color: #f8fafc;
    --text-muted: #94a3b8;
    --primary-blue: #3b82f6;
    --primary-green: #10b981;
    --card-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
}

/* --- Global Reset & Base Styles --- */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: var(--font-sans);
    background-color: var(--bg-main);
    color: var(--text-color);
    line-height: 1.6;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
}

.urdu-font {
    font-family: var(--font-urdu);
    direction: rtl;
}

a {
    color: inherit;
    text-decoration: none;
}

/* --- Glassmorphism Component Style --- */
.glass-card {
    background: var(--bg-glass);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border: 1px solid var(--bg-glass-border);
    border-radius: 16px;
    box-shadow: var(--card-shadow);
    padding: 24px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.glass-card:hover {
    transform: translateY(-4px);
}

/* --- Header & Navigation --- */
.navbar-header {
    position: sticky;
    top: 0;
    z-index: 1000;
    height: var(--nav-height);
    background: var(--bg-glass);
    backdrop-filter: blur(16px);
    border-bottom: 1px solid var(--bg-glass-border);
}

.nav-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100%;
}

.brand-logo {
    display: flex;
    align-items: center;
    gap: 12px;
}

.logo-icon {
    font-size: 1.8rem;
    color: var(--primary-blue);
}

.logo-title {
    font-size: 1.25rem;
    font-weight: 800;
    letter-spacing: -0.5px;
}

.logo-subtitle {
    display: block;
    font-size: 0.85rem;
    color: var(--primary-green);
    margin-top: -4px;
}

.nav-list {
    display: flex;
    list-style: none;
    gap: 24px;
}

.nav-link {
    font-weight: 500;
    transition: color 0.2s ease;
}

.nav-link:hover, .nav-link.active {
    color: var(--primary-blue);
}

.header-actions {
    display: flex;
    align-items: center;
    gap: 12px;
}

.theme-toggle-btn, .mobile-toggle-btn {
    background: transparent;
    border: none;
    font-size: 1.2rem;
    color: var(--text-color);
    cursor: pointer;
    padding: 8px;
}

.mobile-toggle-btn {
    display: none;
}

/* --- Breadcrumb Navigation --- */
.breadcrumb-container {
    padding: 16px 0;
    font-size: 0.875rem;
}

.breadcrumb {
    display: flex;
    list-style: none;
    gap: 8px;
    color: var(--text-muted);
}

/* --- Buttons & UI Elements --- */
.btn {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 10px 20px;
    border-radius: 8px;
    font-weight: 600;
    cursor: pointer;
    border: none;
    transition: all 0.2s ease;
}

.btn-primary {
    background: var(--primary-blue);
    color: #ffffff;
}

.btn-primary:hover {
    background: var(--primary-blue-hover);
}

.btn-secondary-outline {
    border: 2px solid var(--primary-green);
    color: var(--primary-green);
    background: transparent;
}

.btn-secondary-outline:hover {
    background: var(--primary-green);
    color: #ffffff;
}

.badge-pill {
    background: rgba(37, 99, 235, 0.1);
    color: var(--primary-blue);
    padding: 6px 12px;
    border-radius: 20px;
    font-size: 0.85rem;
    font-weight: 600;
}

/* --- Hero Section --- */
.hero-section {
    padding: 40px 0 60px 0;
}

.hero-grid {
    display: grid;
    grid-template-columns: 1.2fr 0.8fr;
    gap: 40px;
    align-items: center;
}

.main-heading {
    font-size: 2.25rem;
    margin: 16px 0;
    line-height: 1.25;
}

.hero-description {
    color: var(--text-muted);
    font-size: 1.1rem;
    margin-bottom: 24px;
}

.search-box {
    display: flex;
    align-items: center;
    background: var(--bg-glass);
    border: 1px solid var(--bg-glass-border);
    padding: 6px 12px;
    border-radius: 12px;
    margin-bottom: 24px;
}

.search-icon {
    color: var(--text-muted);
    margin-right: 12px;
}

.search-box input {
    width: 100%;
    border: none;
    background: transparent;
    padding: 10px;
    color: var(--text-color);
    font-size: 0.95rem;
    outline: none;
}

.hero-cta-group {
    display: flex;
    gap: 16px;
}

.illustration-card {
    text-align: center;
    padding: 32px 24px;
}

.urdu-banner {
    font-size: 1.5rem;
    line-height: 1.8;
    color: var(--primary-green);
    margin-bottom: 24px;
}

.stats-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 12px;
}

.stat-num {
    display: block;
    font-weight: 800;
    font-size: 1.2rem;
    color: var(--primary-blue);
}

.stat-label {
    font-size: 0.75rem;
    color: var(--text-muted);
}

/* --- Layout Sections & Grid --- */
.section {
    padding: 40px 0;
}

.section-header {
    text-align: center;
    margin-bottom: 32px;
}

.section-header h2 {
    font-size: 1.8rem;
    margin-bottom: 8px;
}

.section-header p {
    color: var(--text-muted);
}

.grid {
    display: grid;
    gap: 24px;
}

.grid-3 { grid-template-columns: repeat(3, 1fr); }
.grid-4 { grid-template-columns: repeat(4, 1fr); }

/* --- Class & Subject Cards --- */
.card-badge {
    display: inline-block;
    padding: 4px 8px;
    border-radius: 4px;
    color: #fff;
    font-size: 0.75rem;
    font-weight: 700;
    margin-bottom: 12px;
}

.bg-blue { background: var(--primary-blue); }
.bg-green { background: var(--primary-green); }

.card-urdu {
    font-size: 1.1rem;
    color: var(--primary-green);
    margin: 8px 0;
}

.card-features {
    list-style: none;
    font-size: 0.85rem;
    margin: 16px 0;
}

.card-features li {
    margin-bottom: 6px;
}

.text-green { color: var(--primary-green); }
.text-blue { color: var(--primary-blue); }

.btn-card {
    width: 100%;
    justify-content: center;
    background: rgba(37, 99, 235, 0.1);
    color: var(--primary-blue);
    margin-top: 12px;
}

.subject-card {
    display: flex;
    align-items: center;
    gap: 16px;
}

.subject-icon {
    width: 50px;
    height: 50px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
}

.icon-blue { background: rgba(37, 99, 235, 0.1); color: var(--primary-blue); }
.icon-green { background: rgba(5, 150, 105, 0.1); color: var(--primary-green); }

/* --- Updates Ticker --- */
.updates-ticker {
    display: flex;
    align-items: center;
    gap: 16px;
}

.ticker-badge {
    background: #ef4444;
    color: #fff;
    padding: 6px 12px;
    border-radius: 6px;
    font-weight: 700;
    font-size: 0.8rem;
    white-space: nowrap;
}

.ticker-list {
    list-style: none;
    font-size: 0.9rem;
    font-weight: 500;
}

/* --- FAQ Accordion --- */
.faq-container {
    max-width: 800px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    gap: 16px;
}

.faq-question {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: transparent;
    border: none;
    color: var(--text-color);
    font-size: 1rem;
    font-weight: 600;
    cursor: pointer;
    text-align: left;
}

.faq-answer {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease;
    color: var(--text-muted);
    font-size: 0.95rem;
}

.faq-item.active .faq-answer {
    max-height: 150px;
    margin-top: 12px;
}

/* --- Footer --- */
.main-footer {
    background: var(--bg-glass);
    border-top: 1px solid var(--bg-glass-border);
    padding-top: 40px;
    margin-top: 60px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 1.5fr 1fr 1fr 1fr;
    gap: 32px;
    padding-bottom: 32px;
}

.footer-urdu-desc {
    font-size: 1.1rem;
    color: var(--primary-green);
    margin: 12px 0;
}

.footer-links h4, .footer-social h4 {
    margin-bottom: 16px;
}

.footer-links ul {
    list-style: none;
}

.footer-links li {
    margin-bottom: 8px;
    font-size: 0.9rem;
    color: var(--text-muted);
}

.social-icons {
    display: flex;
    gap: 16px;
    font-size: 1.5rem;
}

.footer-bottom {
    border-top: 1px solid var(--bg-glass-border);
    padding: 20px 0;
    text-align: center;
    font-size: 0.85rem;
    color: var(--text-muted);
}

/* --- Responsive Styles --- */
@media (max-width: 992px) {
    .grid-4 { grid-template-columns: repeat(2, 1fr); }
    .grid-3 { grid-template-columns: repeat(2, 1fr); }
    .hero-grid { grid-template-columns: 1fr; }
    .footer-grid { grid-template-columns: 1fr 1fr; }
}

@media (max-width: 768px) {
    .mobile-toggle-btn { display: block; }
    .nav-menu {
        display: none;
        position: absolute;
        top: var(--nav-height);
        left: 0;
        width: 100%;
        background: var(--bg-main);
        padding: 20px;
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }
    .nav-menu.active { display: block; }
    .nav-list { flex-direction: column; gap: 16px; }
    .grid-4, .grid-3 { grid-template-columns: 1fr; }
    .footer-grid { grid-template-columns: 1fr; }
}

