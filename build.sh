#!/bin/bash

# Nama file utama tanpa ekstensi
FILE="MAGANG"

# Compile pertama kali untuk buat auxiliary files (.aux, .toc, dll)
pdflatex -interaction=nonstopmode "$FILE.tex"

# Jalankan bibtex untuk proses referensi
bibtex "$FILE"

# Jalankan pdflatex dua kali untuk update semua referensi dan daftar isi
pdflatex -interaction=nonstopmode "$FILE.tex"
pdflatex -interaction=nonstopmode "$FILE.tex"

echo "✅ Build selesai! Hasil ada di $FILE.pdf"