# Template Skripsi dan Proposal Tugas Akhir - Universitas Darussalam Gontor (LaTeX)

![LaTeX](https://img.shields.io/badge/Language-LaTeX-008080?style=flat-square&logo=latex&logoColor=white)
![Engine](https://img.shields.io/badge/Engine-XeLaTeX-be2d2d?style=flat-square)
![Status](https://img.shields.io/badge/Status-Active-success?style=flat-square)

Template ini dikembangkan untuk memfasilitasi mahasiswa dalam menyusun dokumen akademis yang sesuai dengan standar format universitas, meliputi pengaturan margin, jenis huruf (termasuk aksara Arab), penomoran halaman otomatis, serta manajemen daftar pustaka yang terstruktur.

---

## 📋 Fitur Utama

Template ini telah dikonfigurasi untuk memenuhi kebutuhan penulisan akademis, antara lain:

- **Kesesuaian Format:** Tata letak halaman, margin, dan penggunaan _font_ Times New Roman telah disesuaikan dengan pedoman penulisan skripsi UNIDA Gontor.
- **Dukungan Bahasa Arab:** Menggunakan _engine_ XeLaTeX dan paket `polyglossia` untuk penulisan ayat Al-Qur'an dan teks Arab (font _Amiri_) yang presisi.
- **Otomatisasi Dokumen:** Daftar Isi, Daftar Gambar, dan Daftar Tabel dihasilkan secara otomatis.
- **Manajemen Referensi:** Integrasi dengan `BibLaTeX` menggunakan gaya sitasi _Chicago Manual of Style_ (Catatan Kaki/Footnote) sesuai standar kampus.

---

## 💻 Prasyarat Sistem

Untuk menggunakan template ini, pastikan perangkat komputer Anda telah terinstal perangkat lunak berikut:

| Perangkat Lunak        | Windows                                 | Linux                     | Fungsi                                                |
| :--------------------- | :-------------------------------------- | :------------------------ | :---------------------------------------------------- |
| **LaTeX Distribution** | [MiKTeX](https://miktex.org/download)   | TeX Live (`texlive-full`) | Mesin kompilasi utama dokumen LaTeX.                  |
| **Teks Editor**        | [TeXstudio](https://www.texstudio.org/) | VS Code / Neovim          | Lingkungan pengembangan (IDE) untuk menulis kode.     |
| **Reference Manager**  | [Zotero](https://www.zotero.o:rg/)      | Zotero                    | Manajemen basis data daftar pustaka (_bibliography_). |
| **Plugin Better Bibtex**  | [Zootero Plugin](https://github.com/retorquere/zotero-better-bibtex/releases/download/v9.0.47/zotero-better-bibtex-9.0.47.xpi)      | Zotero                    | supaya file .bib otomatis terupdate jika zootero ada update |

> **Catatan:** Pengguna Windows disarankan untuk mengaktifkan opsi _"Install missing packages on-the-fly"_ pada pengaturan MiKTeX untuk mengunduh paket yang diperlukan secara otomatis.

---

## 📂 Struktur Direktori

Pengguna hanya perlu menyunting file pada direktori tertentu sesuai dengan bagian naskah yang dikerjakan. Berikut adalah struktur direktori proyek:

```text
📁 THESIS (atau PROPOSAL)
├── 📄 main.tex                <-- File Induk (Jalankan kompilasi dari file ini)
├── 📄 references.bib          <-- Basis data daftar pustaka (Ekspor dari Zotero)
├── 📁 frontmatter/            <-- Bagian Awal Dokumen
│   ├── cover.tex              (Halaman Judul/Sampul)
│   ├── authorization.tex      (Lembar Pengesahan)
│   ├── abstract.tex           (Abstrak)
│   └── ...
└── 📁 mainmatter/             <-- Bagian Isi Naskah
    ├── chapter-1.tex          (Bab I: Pendahuluan)
    ├── chapter-2.tex          (Bab II: Tinjauan Pustaka)
    └── ...dst
```

---

## ⚙️ Panduan Kompilasi

Karena template ini menggunakan BibLaTeX dan Polyglossia, urutan proses kompilasi (build sequence) sangat krusial untuk menghasilkan dokumen yang sempurna.

### Opsi A: Menggunakan TeXstudio (Direkomendasikan)

- Buka file main.tex.

- Pastikan konfigurasi Build pada menu Options -> Configure TeXstudio -> Build diatur sebagai berikut:

- Default Compiler: XeLaTeX

- Default Bibliography Tool: Biber

- Tekan tombol F5 (Build & View).

### Opsi B: Menggunakan Visual Studio Code

- Pastikan ekstensi LaTeX Workshop telah terinstal.

- Buka file main.tex.

- Buka Command Palette (Ctrl+Shift+P), ketik "Build with recipe".

- Pilih resep: latexmk (xelatex).

### Opsi C: Menggunakan Terminal (Command Line)

Jalankan perintah berikut di dalam direktori proyek secara berurutan:

```Bash
- xelatex main
- biber main
- xelatex main
```

---

## 📝 Catatan Tambahan

Penyisipan Gambar: Letakkan file gambar pada folder assets/, kemudian panggil menggunakan perintah \includegraphics.

Tabel: Disarankan menggunakan paket booktabs (\toprule, \midrule, \bottomrule) untuk tampilan tabel yang profesional.

Troubleshooting: Jika terjadi galat (error) atau daftar pustaka tidak muncul, hapus file auxiliary (.aux, .log, .toc, .bbl) kemudian lakukan kompilasi ulang.

✍️ Penulis dan Kontribusi
Dikembangkan oleh: Muhammad Dafi Al Haq Mahasiswa Program Studi Teknik Informatika Fakultas Sains dan Teknologi, Universitas Darussalam Gontor.
