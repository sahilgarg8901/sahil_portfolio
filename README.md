# Sahil Garg – Portfolio

A modern, responsive web portfolio built with **Flutter** and **Dart**. This site showcases professional experience, skills, projects, and accomplishments with a clean, professional design.

## Features

- **Responsive Design**: Adapts seamlessly to desktop, tablet, and mobile screens.
- **Hero Section**: Eye-catching introduction with two-column layout (text + avatar).
- **Sticky Navigation**: Smooth scroll-anchored navigation that collapses to mobile menu.
- **Animations**: Fade-in transitions as sections load.
- **Projects Grid**: Interactive cards with modal details.
- **Modern Typography**: Google Fonts (`Poppins` headers, `Inter` body).
- **Dark/Light Contrast**: Professional color scheme for readability.

## Quick start

### Prerequisites
- Flutter 3.7+ ([install](https://flutter.dev/docs/get-started/install))
- A modern web browser (Chrome recommended for development)

### Run locally

```bash
# Fetch dependencies
flutter pub get

# Run in development mode (Chrome)
flutter run -d chrome

# (Optional) Run in verbose mode for debugging
flutter run -d chrome -v
```

The app will open in a new browser tab at `http://localhost:65432` (port may vary).

## Build for production

### Web (recommended)

```bash
# Build optimized web assets
flutter build web --release
```

Build artifacts are placed in `build/web/`. You can host this directory on any static host:

**Popular deployment options:**
- **GitHub Pages**: Push `build/web/` to a `gh-pages` branch.
- **Netlify**: Drag & drop `build/web/` or link your Git repo.
- **Firebase Hosting**: Use `firebase deploy` after setup.
- **Vercel**: Connect your Git repo for automatic CI/CD.

### Example: Deploy to GitHub Pages

```bash
# Build web version
flutter build web --release

# Initialize git (if not already done)
git init
git add .
git commit -m "Build: web portfolio"

# Create gh-pages branch and push
git checkout -b gh-pages
git add build/web -f
git commit -m "Deploy: web portfolio to GitHub Pages"
git push -u origin gh-pages

# Configure GitHub Pages in repository settings
# Source: gh-pages branch, root directory
```

Your site will be live at: `https://<username>.github.io/<repo-name>`

## Project structure

```
lib/
  main.dart                 # App entry point, theme setup
  sections/                 # Modular UI sections
    header.dart             # Hero/intro section
    about.dart
    skills.dart
    experience.dart
    projects.dart
    education.dart
    achievements.dart
    talks.dart
  widgets/                  # Reusable components
    nav.dart                # Responsive navigation
    fade_animation.dart     # Fade-in animation utility
    web_helper.dart         # Web-specific utilities

assets/
  Sahil_Resume_Nov_2025.pdf # Downloadable resume
  profile.svg               # SVG avatar placeholder
  project_placeholder.svg   # Project screenshot placeholder

pubspec.yaml              # Dependencies & config
```

## Updating content

All content is managed through Dart source files in `lib/sections/`. To update:

1. **Personal info**: Edit `lib/sections/header.dart`
2. **About text**: `lib/sections/about.dart`
3. **Skills**: `lib/sections/skills.dart` (Chip list)
4. **Work history**: `lib/sections/experience.dart` (Job list)
5. **Projects**: `lib/sections/projects.dart` (Project data model)
6. **Other sections**: Follow the same pattern.

For the profile image, replace `assets/profile.svg` with your own (or use `Image.asset('assets/profile.jpg')` in `header.dart` instead of `SvgPicture`).

## Dependencies

- **flutter**: UI framework
- **google_fonts**: Typography (Poppins, Inter)
- **url_launcher**: Open links, emails, PDFs
- **flutter_svg**: SVG rendering
- **animations**: Built-in animation utilities

Run `flutter pub outdated` to check for updates.

## Browser support

Tested on:
- ✅ Chrome / Chromium (90+)
- ✅ Edge (90+)
- ✅ Firefox (88+)
- ✅ Safari (14+)

## Performance tips

- Use `flutter build web --release --web-renderer canvaskit` for better rendering on older browsers.
- Compress images and SVGs in `assets/` to reduce page load time.
- Test with `lighthouse` for SEO and performance insights.

## Troubleshooting

**Port already in use?**
```bash
flutter run -d chrome --web-port 8080
```

**Assets not loading?**
Ensure all files are declared in `pubspec.yaml` under `flutter: assets:`.

**PDF download fails on web?**
The PDF is served as an asset; most browsers will open it in a new tab automatically.

## Future enhancements

- [ ] Dark mode toggle
- [ ] Contact form with backend integration
- [ ] Blog section
- [ ] Multi-language support
- [ ] Analytics integration

## License

Yours to customize. No restrictions.

---

**Built with ❤️ using Flutter**
