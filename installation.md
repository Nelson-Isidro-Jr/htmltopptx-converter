# HTML to PPTX Studio - Installation Guide

## 🚀 Complete Web App for Converting HTML to PowerPoint

Create stunning PowerPoint presentations from HTML/CSS code with:
- ✅ Live preview
- ✅ Drag-and-drop slide reordering
- ✅ Editable text in PowerPoint
- ✅ Perfect design preservation (gradients, effects)

---

## 📦 Installation

### Prerequisites
- Python 3.8 or higher
- Modern web browser (Chrome, Firefox, Edge)

### Step 1: Install Python Dependencies

```bash
# Navigate to backend directory
cd backend

# Install required packages
pip install -r requirements.txt

# Install Playwright browsers (one-time setup)
playwright install chromium
```

### Step 2: Start the Backend Server

```bash
# In the backend directory
python app.py
```

You should see:
```
🚀 Starting HTML to PPTX Server...
📡 API: http://localhost:5000
 * Running on http://127.0.0.1:5000
```

### Step 3: Open the Frontend

```bash
# In a new terminal, navigate to frontend directory
cd frontend

# Open the HTML file in your browser
# Option 1: Double-click index.html
# Option 2: Serve with a simple HTTP server
python -m http.server 8000
```

Then open: `http://localhost:8000`

---

## 🎯 How to Use

### 1. Add Slides

**HTML Input Panel:**
- Paste your HTML/CSS code
- Check "Editable text" to make headings editable in PowerPoint
- Click **"+ ADD SLIDE"**

**Example HTML:**
```html
<style>
  body {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    font-family: Arial;
  }
  h1 {
    font-size: 120px;
    color: white;
    text-shadow: 0 10px 30px rgba(0,0,0,0.5);
  }
</style>
<h1 class="editable-text">Hello PPTX!</h1>
```

### 2. Preview Slides

**Preview Panel:**
- See real-time rendering of your slides
- Use ← → buttons to navigate
- Click on slide thumbnails to jump to specific slides

### 3. Manage Slides

**Slides Panel:**
- **Drag & drop** slides to reorder
- Click **×** to delete slides
- Slides are numbered automatically

### 4. Export Presentation

**Export Panel:**
- Enter filename (no .pptx extension needed)
- Click **"↓ DOWNLOAD PPTX"**
- File downloads automatically

---

## 🎨 Making Elements Editable

By default, `<h1>`, `<h2>`, and `<h3>` elements become editable.

To make any element editable, add `class="editable-text"`:

```html
<div class="editable-text">This text will be editable!</div>
<p class="editable-text">So will this paragraph</p>
```

---

## 📁 Project Structure

```
html-to-pptx-studio/
├── backend/
│   ├── app.py              # Flask API server
│   └── requirements.txt    # Python dependencies
└── frontend/
    └── index.html          # React web app (single file)
```

---

## 🔧 Troubleshooting

### Issue: "Connection refused" or API errors

**Solution:**
1. Make sure backend is running (`python app.py`)
2. Check that it's on port 5000
3. Verify no firewall blocking localhost

### Issue: Slides not rendering properly

**Solution:**
1. Wait 2-3 seconds after clicking "Add Slide"
2. Check browser console for errors (F12)
3. Ensure HTML is valid

### Issue: Playwright install fails

**Solution:**
```bash
# Try installing manually
python -m playwright install chromium

# Or with system dependencies
python -m playwright install --with-deps chromium
```

### Issue: Export downloads empty file

**Solution:**
1. Ensure slides were added successfully (check preview)
2. Look for errors in backend terminal
3. Try re-adding slides

---

## 🎓 Tips & Best Practices

### 1. Design for 16:9 Ratio
Your HTML renders at 1920×1080 (16:9):
```html
<style>
  body {
    width: 1920px;
    height: 1080px;
  }
</style>
```

### 2. Use Web-Safe Fonts
Or include @font-face:
```html
<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
  body { font-family: 'Inter', sans-serif; }
</style>
```

### 3. Test Before Adding Many Slides
Preview a single slide first to ensure it renders correctly.

### 4. Keep HTML Self-Contained
Include all CSS in `<style>` tags within your HTML.

### 5. For Complex Animations
Wait longer (3-4 seconds) before screenshots are taken.

---

## 🌟 Example HTML Templates

### Template 1: Simple Title Slide
```html
<style>
  body {
    background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    text-align: center;
    color: white;
  }
  h1 { font-size: 96px; margin-bottom: 20px; }
  p { font-size: 36px; opacity: 0.9; }
</style>
<div>
  <h1 class="editable-text">Project Kickoff</h1>
  <p class="editable-text">Q1 2026 Strategy</p>
</div>
```

### Template 2: Feature Grid
```html
<style>
  body {
    background: #0f172a;
    padding: 80px;
    color: white;
  }
  .grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 40px;
  }
  .card {
    background: rgba(59, 130, 246, 0.1);
    border: 2px solid #3b82f6;
    border-radius: 16px;
    padding: 40px;
    text-align: center;
  }
  .icon { font-size: 64px; margin-bottom: 20px; }
  h3 { font-size: 32px; margin-bottom: 12px; }
</style>
<div class="grid">
  <div class="card">
    <div class="icon">🚀</div>
    <h3 class="editable-text">Fast</h3>
  </div>
  <div class="card">
    <div class="icon">🎨</div>
    <h3 class="editable-text">Beautiful</h3>
  </div>
  <div class="card">
    <div class="icon">✨</div>
    <h3 class="editable-text">Easy</h3>
  </div>
</div>
```

---

## 🔒 Production Considerations

This is a local development version. For production:

1. **Use a database** instead of in-memory storage
2. **Add authentication** to protect presentations
3. **Implement file storage** (AWS S3, etc.)
4. **Add rate limiting** to prevent abuse
5. **Use environment variables** for config

---

## 📝 License

Free to use and modify for personal and commercial projects.

---

## 🐛 Known Limitations

1. **CSS blur filters** - Not natively supported in PowerPoint, we approximate with gradients
2. **Custom fonts** - Only web-safe fonts work reliably
3. **Complex animations** - Static snapshots only
4. **File size** - Many high-res slides = large PPTX files

---

## 💡 Advanced Features

### Custom Transitions (Future)
Currently, slides have no transitions. To add:
- Edit backend to support transition types
- Modify `create_pptx_slide()` to apply transitions

### Batch Import
Add multiple HTML files at once:
- Create file upload endpoint
- Process files in parallel
- Auto-generate previews

---

## 🎉 You're Ready!

1. **Start backend**: `cd backend && python app.py`
2. **Open frontend**: Open `frontend/index.html` in browser
3. **Create slides**: Paste HTML → Add Slide
4. **Export**: Download your PPTX!

Enjoy creating beautiful presentations! 🎨