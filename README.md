# Personal Portfolio Website

A minimalist, elegant, and SEO-optimized personal portfolio website built with pure HTML, CSS, and JavaScript. No frameworks or external libraries required.

## 🚀 Features

- **Responsive Design**: Mobile-first approach with full responsive layout
- **Dark Mode**: Toggle between light and dark themes with localStorage persistence
- **SEO Optimized**: Semantic HTML, meta tags, Open Graph, and structured data
- **Performance**: Lightweight, fast-loading with optimized assets
- **Accessibility**: WCAG compliant with proper ARIA labels and keyboard navigation
- **Modern UI**: Clean, minimalist design with smooth animations

## 📁 Project Structure

```
portfolio/
├── index.html              # Landing page / Hero section
├── about.html              # About section
├── projects.html           # Projects showcase
├── blog.html               # Blog posts
├── contact.html            # Contact form and information
├── assets/
│   ├── css/
│   │   ├── style.css       # Global styles
│   │   └── responsive.css  # Media queries
│   ├── js/
│   │   ├── main.js         # Main functionality
│   │   └── darkmode.js     # Dark mode toggle
│   └── images/
│       ├── profile.jpg     # Profile image
│       ├── project-*.png   # Project thumbnails
│       └── blog-*.jpg      # Blog post images
├── seo/
│   ├── sitemap.xml         # XML sitemap
│   └── robots.txt          # Search engine directives
└── README.md               # This file
```

## 🛠️ Setup & Installation

1. **Clone or Download** the repository
2. **Open** `index.html` in your web browser
3. **Customize** the content with your information
4. **Deploy** to your preferred hosting platform

### Local Development

Simply open `index.html` in your browser or use a local server:

```bash
# Using Python
python -m http.server 8000

# Using Node.js
npx serve .

# Using PHP
php -S localhost:8000
```

## 🎨 Customization

### Personal Information

Update the following in each HTML file:

1. **Name**: Replace "Your Name" with your actual name
2. **Email**: Update email addresses in contact forms and meta tags
3. **Social Links**: Update GitHub, LinkedIn, Twitter URLs
4. **Profile Image**: Replace `assets/images/profile.jpg` with your photo
5. **Project Images**: Replace project thumbnails with actual screenshots
6. **Content**: Update all text content to reflect your information

### Styling

- **Colors**: Modify CSS custom properties in `style.css`
- **Fonts**: Change font families in the CSS
- **Layout**: Adjust grid layouts and spacing
- **Animations**: Customize transitions and effects

### SEO Optimization

1. **Meta Tags**: Update title, description, and Open Graph tags
2. **Sitemap**: Update URLs in `seo/sitemap.xml`
3. **Robots.txt**: Modify `seo/robots.txt` if needed
4. **Alt Text**: Ensure all images have descriptive alt attributes

## 🌐 Hosting Options

### GitHub Pages (Recommended)

1. Push code to a GitHub repository
2. Go to repository Settings > Pages
3. Select source branch (usually `main`)
4. Your site will be available at `https://username.github.io/repository-name`

### Netlify

1. Connect your GitHub repository
2. Deploy automatically on every push
3. Custom domain support available

### Vercel

1. Import your GitHub repository
2. Automatic deployments
3. Great performance and CDN

### Traditional Hosting

Upload all files to your web server's public directory.

## 📱 Browser Support

- Chrome 60+
- Firefox 60+
- Safari 12+
- Edge 79+
- Mobile browsers (iOS Safari, Chrome Mobile)

## ⚡ Performance Tips

1. **Optimize Images**: Compress images before uploading
2. **Minify CSS/JS**: Use build tools to minify files
3. **Enable Compression**: Configure gzip compression on your server
4. **CDN**: Use a CDN for faster global delivery
5. **Caching**: Set appropriate cache headers

## 🔍 SEO Checklist

- [ ] Update all meta tags with your information
- [ ] Add proper alt text to all images
- [ ] Update sitemap.xml with correct URLs
- [ ] Test with Google PageSpeed Insights
- [ ] Validate HTML markup
- [ ] Check mobile-friendliness
- [ ] Submit sitemap to Google Search Console

## 🎯 Features Breakdown

### Navigation
- Fixed header with smooth scrolling
- Mobile hamburger menu
- Active page highlighting
- Dark mode toggle

### Homepage
- Hero section with call-to-action
- Skills preview
- Responsive grid layout

### About Page
- Personal story and background
- Skills and technologies
- Professional values

### Projects Page
- Project showcase grid
- Hover effects and overlays
- Technology tags
- Live demo and GitHub links

### Blog Page
- Featured post layout
- Article grid with excerpts
- Category and date tags
- Load more functionality

### Contact Page
- Contact information
- Working contact form
- Social media links
- Availability status

## 🚀 Deployment Checklist

- [ ] Replace all placeholder content
- [ ] Update all URLs and links
- [ ] Test all functionality
- [ ] Validate HTML and CSS
- [ ] Test on multiple devices
- [ ] Check loading speed
- [ ] Verify SEO elements
- [ ] Test contact form
- [ ] Update sitemap and robots.txt

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Feel free to fork this project and customize it for your own use. If you make improvements, consider submitting a pull request!

## 📞 Support

If you have any questions or need help customizing this portfolio, feel free to reach out!

---

**Happy coding! 🎉**
