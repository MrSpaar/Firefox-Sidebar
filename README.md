# Firefox Sidebar

Customizable sidebar for Firefox-based browser:

<p align="center">
    <img src="./images/always-visible.png" width="49%" /> <img src="./images/compact.png" width="49%" />
</p>

To install the theme, execute the following command (it will override existing files):
```bash
bash <(curl -s -o- https://raw.githubusercontent.com/MrSpaar/Firefox-Sidebar/refs/heads/main/install.sh)
```

## Configuration

There are two parameters in `about:config`:
- `custom.sidebar.gaps` (`True`/`False`): have gaps around the web page or not
- `custom.sidebar.compact` (`True`/`False`): switch between always visible and compact mode

> [!TIP]
> To change background colors, gaps or element sizes, you can modify [`variables.css`](./src/chrome/variables.css)
