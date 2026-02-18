# How to Get htmltopptx-converter.js.org for FREE

This guide will walk you through getting your free `htmltopptx-converter.js.org` domain.

---

## Step 1: Upload to GitHub

### 1.1 Create a GitHub Account
- Go to [github.com](https://github.com) and sign up (free)

### 1.2 Create a New Repository
1. Click the **+** icon in the top right
2. Select **New repository**
3. Name it: `htmltopptx-converter`
4. Make it **PUBLIC** (required for js.org)
5. Click **Create repository**

### 1.3 Upload Your Files

**Option A: Using GitHub Desktop (Easiest)**
1. Download [GitHub Desktop](https://desktop.github.com/)
2. Sign in with your GitHub account
3. Clone your new repository
4. Copy all your project files into the folder
5. Commit and push

**Option B: Using Command Line**
```bash
# Navigate to your project folder
cd /home/jay/Documents/Learning/Widgets/htmltopptx

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - HTML to PPTX Converter"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/htmltopptx-converter.git

# Push to GitHub
git branch -M main
git push -u origin main
```

---

## Step 2: Apply for js.org Subdomain

### 2.1 Fork the js.org Repository
1. Go to [github.com/js-org/js.org](https://github.com/js-org/js.org)
2. Click **Fork** in the top right
3. Wait for the fork to complete

### 2.2 Edit the cnames_active.json File
1. In your fork, navigate to `src/cnames_active.json`
2. Click the **pencil icon** (Edit this file)
3. Add your subdomain in alphabetical order:

```json
"htmltopptx-converter": "YOUR_RENDER_URL.onrender.com",
```

**Example:**
```json
"htmltopptx-converter": "htmltopptx-converter.onrender.com",
```

> **Important**: Add it in alphabetical order among other entries, and include a comma after your entry if there's another entry after yours.

### 2.3 Commit the Change
1. Add a commit message like: `Add htmltopptx-converter subdomain`
2. Click **Commit changes**

### 2.4 Create a Pull Request
1. Click **Pull request** tab
2. Click **New pull request**
3. Make sure it's from your fork to `js-org:main`
4. Click **Create pull request**
5. Title: `Add htmltopptx-converter`
6. In the description, include:
   - Link to your GitHub repo
   - Brief description of your project
   - Confirm it's a JavaScript-related project
7. Click **Create pull request**

### 2.5 Wait for Approval
- The js.org team will review your request
- Usually takes 1-7 days
- They may ask questions in the PR comments
- Once approved, your domain will be active!

---

## Step 3: Configure Render for Custom Domain

### 3.1 Go to Your Render Dashboard
1. Log in to [render.com](https://render.com)
2. Select your web service

### 3.2 Add Custom Domain
1. Go to **Settings** tab
2. Scroll to **Custom Domains**
3. Click **Add Custom Domain**
4. Enter: `htmltopptx-converter.js.org`
5. Click **Add**

### 3.3 Wait for DNS Propagation
- Render will verify the domain
- This may take a few minutes to a few hours
- Once verified, your site will be accessible at the new URL!

---

## Step 4: Update Your Repository

After your domain is active, update your README.md:

1. Change the live demo URL to: `https://htmltopptx-converter.js.org`
2. Commit and push the change

---

## Summary Checklist

- [ ] Create GitHub account
- [ ] Create public repository `htmltopptx-converter`
- [ ] Upload all project files
- [ ] Fork js.org repository
- [ ] Edit `cnames_active.json` with your subdomain
- [ ] Create pull request
- [ ] Wait for approval
- [ ] Add custom domain in Render
- [ ] Test your new URL!

---

## Need Help?

- **js.org FAQ**: [js.org/#faq](https://js.org/#faq)
- **js.org GitHub**: [github.com/js-org/js.org](https://github.com/js-org/js.org)
- **Render Custom Domains**: [render.com/docs/custom-domains](https://render.com/docs/custom-domains)

---

## What's Your Current Render URL?

You'll need your current Render URL (e.g., `htmltopptx-converter.onrender.com`) for the js.org application. Make sure your app is deployed and working on Render before applying for the js.org subdomain.