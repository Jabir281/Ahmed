# RunPod Instructions - MCQ PDF Deduplication Tool

## Quick Start (Copy-Paste Commands)

### Step 1: Clone the Repository
```bash
cd /workspace
git clone https://github.com/Jabir281/Ahmed.git
cd Ahmed
```

### Step 2: Run Setup Script
```bash
chmod +x setup_runpod.sh
./setup_runpod.sh
```

### Step 3: Upload Your PDF
Upload your PDF file to the `pdfs` folder:
```bash
# Create pdfs folder if it doesn't exist
mkdir -p pdfs

# Option A: Use RunPod's file browser to upload
# Option B: Use wget if PDF is hosted online
# wget -O pdfs/your_file.pdf "https://your-url.com/file.pdf"
```

### Step 4: Run the Deduplication Tool
```bash
python codes/dedup_from_json.py
```

### Step 5: Download Results
After processing, your files will be in:
- `JSON/` - Extracted questions and duplicate reports
- `output/` - Deduplicated PDF

---

## One-Liner Setup (After Clone)
```bash
cd /workspace && git clone https://github.com/Jabir281/Ahmed.git && cd Ahmed && chmod +x setup_runpod.sh && ./setup_runpod.sh
```

---

## Folder Structure
```
Ahmed/
├── codes/
│   └── dedup_from_json.py    # Main script
├── pdfs/                      # PUT YOUR PDFs HERE
├── JSON/                      # Output: Questions JSON files
├── output/                    # Output: Deduplicated PDFs
├── requirements.txt
├── setup_runpod.sh
└── RUNPOD_INSTRUCTIONS.md
```

---

## Configuration (Optional)
Edit `codes/dedup_from_json.py` to adjust these settings:

```python
# Number of parallel workers (default: 8)
NUM_WORKERS = 8

# Pages to process at once (default: 50, increase for more RAM)
BATCH_SIZE = 50

# OCR resolution (default: 200, increase for better quality)
OCR_DPI = 200

# Similarity threshold (default: 0.85 = 85%)
SIMILARITY_THRESHOLD = 0.85
```

---

## Troubleshooting

### "No PDF files found"
- Make sure your PDF is in the `pdfs/` folder
- Check file extension is `.pdf` (lowercase)

### "Tesseract not found"
```bash
apt-get install -y tesseract-ocr tesseract-ocr-eng
```

### "Poppler not found"
```bash
apt-get install -y poppler-utils
```

### Memory Error (unlikely with 92GB RAM)
- Reduce `BATCH_SIZE` to 25 or 10
- Process will be slower but use less memory

---

## Time Estimates (RTX 5090 + 92GB RAM)
| PDF Size | Estimated Time |
|----------|----------------|
| 100 pages | ~2-3 minutes |
| 500 pages | ~10-15 minutes |
| 1000 pages | ~20-30 minutes |
| 2000+ pages | ~45-60 minutes |

---

## Save Money Tips
1. **Upload PDF first** before starting the pod
2. **Use the one-liner** for fastest setup
3. **Download results immediately** after completion
4. **Stop the pod** when done - don't let it idle!

---

## Support
Repository: https://github.com/Jabir281/Ahmed.git
