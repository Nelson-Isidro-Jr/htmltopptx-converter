# 🚀 Quick Start Guide

## Installation (5 minutes)

### Windows
1. **Extract** the zip file
2. **Double-click** `start.bat`
3. Wait for installation to complete
4. Browser opens automatically

### Mac/Linux
1. **Extract** the zip file
2. **Open Terminal** in the extracted folder
3. Run: `./start.sh`
4. Open `frontend/index.html` in your browser

### Manual Installation
```bash
# Install dependencies
cd backend
pip install -r requirements.txt
playwright install chromium

# Start server
python app.py

# In another terminal or just double-click frontend/index.html
```

---

## Usage (30 seconds)

### 1. Paste HTML
```html
<style>
  body {
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    color: white;
  }
</style>
<h1>Hello World!</h1>
```

### 2. Click "Add Slide"
Wait 2-3 seconds for rendering

### 3. Preview
Use ← → to navigate

### 4. Export
Enter filename → Click "Download PPTX"

---

## Example Templates

### Title Slide
```html
<style>
  body {
    background: #1e3a8a;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    color: white;
    text-align: center;
  }
  h1 { font-size: 96px; }
  p { font-size: 36px; opacity: 0.8; }
</style>
<h1 class="editable-text">My Presentation</h1>
<p class="editable-text">Subtitle Here</p>
```

### Feature Grid
```html
<style>
  body {
    background: #0f172a;
    padding: 100px;
    color: white;
  }
  .grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 40px;
  }
  .card {
    background: linear-gradient(135deg, #3b82f6, #2563eb);
    padding: 60px;
    border-radius: 20px;
    text-align: center;
  }
  .icon { font-size: 72px; }
  h2 { font-size: 36px; margin-top: 20px; }
</style>
<div class="grid">
  <div class="card">
    <div class="icon">🚀</div>
    <h2 class="editable-text">Fast</h2>
  </div>
  <div class="card">
    <div class="icon">🎨</div>
    <h2 class="editable-text">Beautiful</h2>
  </div>
  <div class="card">
    <div class="icon">⚡</div>
    <h2 class="editable-text">Powerful</h2>
  </div>
</div>
```

---

## Troubleshooting

**Backend won't start?**
- Check Python is installed: `python --version`
- Try: `pip install --upgrade pip`

**Slides not rendering?**
- Wait 2-3 seconds after clicking "Add Slide"
- Check browser console (F12) for errors

**Export fails?**
- Ensure backend is running on port 5000
- Check that slides appear in preview

---

## Features

✅ Live preview  
✅ Drag-and-drop reordering  
✅ Editable text in PowerPoint  
✅ Perfect gradient preservation  
✅ CSS animations support  
✅ Custom fonts support  

---

## Need Help?

Full documentation: See `README.md`

Enjoy creating presentations! 🎨