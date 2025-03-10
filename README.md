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

You can modify the following preferences in `about:config`:

| Property                           | Value   | Description                                       |
|----------------------------------- | ------- |-------------------------------------------------- |
| `custom.sidebar.visible`           | Boolean | Switch between always visible and compact mode    |
| `custom.sidebar.gaps`              | Boolean | Have gaps around the web page or not              |
| `custom.sidebar.bottom-burger`     | Boolean | Put the burger menu at the bottom right corner    |
| `custom.sidebar.bottom-extensions` | Boolean | Put the extensions menu at the bottom left corner |

> [!TIP]
> To change background colors, gaps or element sizes, you can modify [`variables.css`](./src/chrome/variables.css)

> [!NOTE]
> The burger and extension menu buttons are not removable so they will render above any other button when
> placed at the bottom of the sidebar (they are absolutely positionned)
