# HTML to PPTX Converter

A free, web-based tool to convert HTML content to PowerPoint (PPTX) presentations.

![HTML to PPTX Converter](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Python](https://img.shields.io/badge/Python-3.9+-green.svg)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)

## Features

- Convert HTML to PowerPoint presentations
- Support for tables, lists, headings, and formatted text
- Clean and modern web interface
- Free to use - no registration required
- Download generated PPTX files instantly

## Live Demo

Visit the live application at: [htmltopptx-converter.js.org](https://htmltopptx-converter.js.org)

## How to Use

1. Open the web application
2. Paste or type your HTML content in the input area
3. Click "Convert to PPTX"
4. Download the generated PowerPoint file

## Tech Stack

- **Backend**: Python, Flask
- **Frontend**: HTML, CSS, JavaScript
- **PPTX Generation**: python-pptx library
- **Deployment**: Render.com

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