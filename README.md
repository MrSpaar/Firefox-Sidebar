# Firefox Sidebar

Customizable sidebar for Firefox-based browser:

<p align="center">
    <img src="./images/always-visible.png" width="49%" /> <img src="./images/compact.png" width="49%" />
</p>

To install the theme, execute the following command:
```bash
bash <(curl -s -o- https://raw.githubusercontent.com/mrspaar/firefox-sidebar/master/install.sh)
```

## Configuration

There are two parameters in `about:config`:

| Property                 | Value   | Description                                    |
|------------------------- | ------- |----------------------------------------------- |
| `custom.sidebar.visible` | Boolean | Switch between always visible and compact mode |
| `custom.sidebar.gaps`    | Boolean | Have gaps around the web page or not           |

You can modify `variables.css`:

| Variable name               | Default value | Description                                           |
|---------------------------- | ------------- |------------------------------------------------------ |
| `--sidebar-width`           | 200px         | Width of the sidebar in both modes                    |
| `--floating-urlbar-width`   | 600px         | Width of the urlbar when opened                       |
| `--urlbar-top-position`     | 20vh          | Equivalent to the top margin of the opened urlbar     |
| `--compact-margin`          | 5px           | Left margin of the compact sidebar                    |
| `--compact-detection-width` | 5px           | How far from the left the sidebar begins to show      |
| `--gap-size`                | 12px          | Thickness of the gaps around the web page             |
| `--gap-radius`              | 10px          | Border radius of the web page                         |
| `--sidebar-background`      | #303030       | Sidebar and gap background color                      |
| `--secondary-background`    | #1e1e1e       | Bookmark, history and internal pages background color |
| `--tab-background`          | #444444       | Tab and empty urlbar background color                 |
