# PDF Image Extractor Script

This is a Bash script that extracts images from PDF files using the `pdfimages` utility from Poppler. It supports both individual files and directories containing multiple PDFs.

## Prerequisites
 -------------------------------------------------------------------------------------------
- **pdfimages**: This script requires `pdfimages`, which is part of the Poppler utilities.
  - On Linux, you can install it with the following command:
    ```bash
    sudo apt-get install poppler-utils
    ```

- **Bash**: This script is written for Unix-like environments, so it works on Linux and macOS. For Windows, use WSL or Git Bash.
------------------------------------------------------------------------------------------------
## Usage

1. Clone or download this repository:
   ```bash
   git clone https://github.com/irfan643/pdf-image-extractor.git

   cd pdf-image-extractor

   --------------------------------------------------------------------------------------------------------------
   RUN THIS SCRIPT
   chmod +x extract_images.sh
    bash./extract_images.sh
   -------------------------------------------------------------------
   
