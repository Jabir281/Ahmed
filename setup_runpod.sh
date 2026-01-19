#!/bin/bash
# =============================================================
# RunPod Setup Script for MCQ PDF Deduplication Tool
# GPU: RTX 5090 | 32GB VRAM | 92GB RAM | 12 vCPU
# =============================================================

echo "=============================================="
echo "MCQ PDF Deduplication Tool - RunPod Setup"
echo "=============================================="

# Update system packages
echo "[1/5] Updating system packages..."
apt-get update -qq

# Install Poppler (required for pdf2image)
echo "[2/5] Installing Poppler PDF utilities..."
apt-get install -y -qq poppler-utils

# Install Tesseract OCR with English language pack
echo "[3/5] Installing Tesseract OCR..."
apt-get install -y -qq tesseract-ocr tesseract-ocr-eng

# Verify Tesseract installation
echo "[4/5] Verifying Tesseract installation..."
tesseract --version

# Install Python dependencies
echo "[5/5] Installing Python dependencies..."
pip install -q -r requirements.txt

echo ""
echo "=============================================="
echo "Setup Complete!"
echo "=============================================="
echo ""
echo "To run the deduplication tool:"
echo "  1. Upload your PDF to the 'pdfs' folder"
echo "  2. Run: python codes/dedup_from_json.py"
echo ""
