# ⚡ Run Windows 11 inside GitHub Codespaces 24/7

[![ZipLoot.app](https://img.shields.io/badge/Powered%20By-ZipLoot.app-818cf8?style=for-the-badge&logo=rocket)](https://ziploot.app)

A guide to run Windows 11 inside Docker via QEMU/KVM on GitHub Codespaces, and keeping it alive 24/7 using a GitHub Actions cron job.

## 🚀 Setup Steps

1. Create a repository using this template.
2. Launch a **GitHub Codespace** on the repository. Select the 4 vCPU / 16GB RAM machine type.
3. The devcontainer will automatically run `docker-compose up` to start Windows 11.
4. Expose the web interface (port 8006) using a Cloudflare Tunnel:
   `cloudflared tunnel --url http://localhost:8006`
5. Configure the `.github/workflows/keep-alive.yml` with your `GH_PAT` (Personal Access Token) and `CODESPACE_NAME` secrets to keep the Codespace running 24/7!

---

## 🌐 Discover More Free Tools on ZipLoot

Check out our full suite of automated web applications and developer tools at **[https://ziploot.app](https://ziploot.app)**:

- 🎥 **[Ad-Free Video Downloader](https://ziploot.app/addfree)** — Fast social video downloads with zero popups.
- 📄 **[Unlimited PDF Toolset](https://ziploot.app/pdf-toolset)** — Merge, split, compress, and edit PDFs in browser.
- 📹 **[YouTube Downloader](https://ziploot.app/youtube-downloader)** — Download high quality YouTube videos and audio for free.
- 🎨 **[Watermark Remover](https://ziploot.app/watermark-remover)** — Remove image watermarks automatically.
- 🌐 **[Image Translator](https://ziploot.app/image-translator)** — Translate text inside images online instantly.

---

*Maintained with ❤️ by the **[ZipLoot Team](https://ziploot.app)**.*
