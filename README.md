# Firefox Sidebar

Customizable sidebar for Firefox-based browser:

<p align="center">
    <img src="./images/always-visible.png" width="49%" /> <img src="./images/compact.png" width="49%" />
</p>

To install the theme, execute the following command (it will override existing files):
```bash
bash <(curl -s -o- https://raw.githubusercontent.com/MrSpaar/Firefox-Sidebar/refs/heads/main/install.sh)
```

> [!WARNING]
> By default, button placement is incompatible with the vertical sidebar layout, you'll need to
> right click -> customize toolbar and modify it as you wish.

## Configuration

You can modify the following preferences in `about:config`:

| Property                           | Value   | Description                                                         |
|----------------------------------- | ------- |-------------------------------------------------------------------- |
| `custom.sidebar.gaps`              | Boolean | Have gaps around the web page or not                                |
| `custom.sidebar.compact`           | Boolean | Enable the compact sidebar mode or not                              |
| `custom.sidebar.bottom-extensions` | Boolean | Put the extensions menu at the bottom left corner (cannot be moved) |

> [!TIP]
> To change background colors, gaps or element sizes, you can modify [`variables.css`](./src/chrome/variables.css)
