# HTML to PPTX Converter

A free, web-based tool to convert HTML content to PowerPoint (PPTX) presentations. Built with **React** and modern JavaScript.

![HTML to PPTX Converter](https://img.shields.io/badge/version-1.0.0-blue.svg)
![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-yellow.svg)
![React](https://img.shields.io/badge/React-18+-61DAFB.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## Features

- Convert HTML to PowerPoint presentations
- **Real-time preview** with React state management
- **Drag-and-drop slide reordering** using HTML5 Drag & Drop API
- **Clipboard API integration** for copy/paste functionality
- Support for tables, lists, headings, and formatted text
- Clean and modern React-based UI
- Free to use - no registration required
- Download generated PPTX files instantly

## Live Demo

Visit the live application at: [htmltopptx-converter.js.org](https://htmltopptx-converter.js.org)

## How to Use

1. Open the web application
2. Paste or type your HTML content in the input area
3. Preview updates in real-time
4. Click "Add to Slide" to add content
5. Drag and drop to reorder slides
6. Download the generated PowerPoint file

## Tech Stack

### Frontend (JavaScript)
- **React 18** - UI components with hooks (`useState`, `useEffect`, `useRef`)
- **Babel** - JSX transformation
- **Fetch API** - REST API communication
- **HTML5 Drag & Drop API** - Slide reordering
- **Clipboard API** - Copy/paste functionality
- **Blob API** - File download handling

### Backend
- **Python/Flask** - Server-side PPTX generation
- **python-pptx** - PowerPoint file creation

## Local Development

### Prerequisites

- Python 3.9 or higher
- pip (Python package manager)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/htmltopptx-converter.git
cd htmltopptx-converter
```

2. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Run the application:
```bash
python app.py
```

5. Open your browser and visit `http://localhost:5000`

## Deployment

This project is configured for deployment on Render.com using Docker.

### Deploy to Render

1. Fork this repository
2. Create a new Web Service on Render
3. Connect your GitHub repository
4. Render will automatically detect the Dockerfile

## Project Structure

```
htmltopptx-converter/
|-- app.py              # Main Flask application
|-- index.html          # Frontend interface
|-- Dockerfile          # Docker configuration for deployment
|-- requirements.txt    # Python dependencies
|-- render.yaml         # Render.com configuration
|-- start.sh            # Startup script for Linux/Mac
|-- start.bat           # Startup script for Windows
```

## Supported HTML Elements

- Headings (h1-h6)
- Paragraphs
- Tables
- Ordered and unordered lists
- Bold and italic text
- Links

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Author

Created with care for the open-source community.

---

If you find this project useful, please consider giving it a star!