#!/bin/bash

# Prompt the user for the input PDF file or directory
read -p "Enter the path to the PDF file or directory: " PDF_DIR

# Prompt the user for the output directory for extracted images
read -p "Enter the path to the output directory for extracted images: " OUTPUT_DIR

# Check if the output directory exists, if not, create it
if [[ ! -d "$OUTPUT_DIR" ]]; then
    echo "Output directory doesn't exist. Creating it..."
    mkdir -p "$OUTPUT_DIR"
fi

# Check if the input is a file or a directory
if [[ -f "$PDF_DIR" ]]; then
    # If it's a file, extract images from the file
    pdfimages -all "$PDF_DIR" "$OUTPUT_DIR/$(basename "$PDF_DIR" .pdf)"
    if [[ $? -eq 0 ]]; then
        echo "Images extracted successfully from file: $(basename "$PDF_DIR")"
    else
        echo "Error extracting images from file: $(basename "$PDF_DIR")"
    fi
elif [[ -d "$PDF_DIR" ]]; then
    # If it's a directory, iterate over each PDF file in the directory
    for pdf_file in "$PDF_DIR"/*.pdf; do
        # Extract the filename without the extension
        filename=$(basename "$pdf_file" .pdf)
        
        # Use pdfimages to extract images
        pdfimages -all "$pdf_file" "$OUTPUT_DIR/$filename"
        if [[ $? -eq 0 ]]; then
            echo "Images extracted successfully from file: $filename"
        else
            echo "Error extracting images from file: $filename"
        fi
    done
else
    echo "Invalid input. Please enter a valid file or directory path."
fi

