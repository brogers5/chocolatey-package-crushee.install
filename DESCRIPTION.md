
---

### [choco://crushee.install](choco://crushee.install)

To use choco:// protocol URLs, install [(unofficial) choco:// Protocol support](https://community.chocolatey.org/packages/choco-protocol-support)

---

## Crushee

Crushee is an image compression tool, powered by Electron and Node.js. You can carefully tune your images locally to meet your needs, without having to re-upload to a web service, or restart an application every time.

![Screenshot](https://cdn.jsdelivr.net/gh/brogers5/chocolatey-package-crushee.install@899fd1d5ccc784374ecd07d819958fa2f6f4f9a8/Screenshot.png)

### Features

* Input several different image file formats (e.g. JPEG, PNG, GIF, SVG, WebP, AVIF, HEIC)
* Optionally convert to select image file formats (e.g. JPEG, PNG, WebP, AVIF)
* Resize images - define an exact size, or upscale/downscale while preserving the original aspect ratio
* Batch processing - analyze, crush and save multiple images at once!
* Quality Level sliders - experiment and find the perfect balance between picture quality and file size!
* Advanced format-specific options, such as Chroma Subsampling Level and Color Count
* Light/Dark Mode app theme

## Package Notes

The installer executed by this package was built using Nullsoft Scriptable Install System (NSIS). For advanced setup scenarios, refer to [NSIS's command-line interface documentation](https://nsis.sourceforge.io/Docs/Chapter3.html). Any desired arguments can be appended to (or optionally overriding with the `--override-arguments` switch) the package's default install arguments with the `--install-arguments` option.

---

For future upgrade operations, consider opting into Chocolatey's `useRememberedArgumentsForUpgrades` feature to avoid having to pass the same arguments with each upgrade:

```shell
choco feature enable --name="'useRememberedArgumentsForUpgrades'"
```
