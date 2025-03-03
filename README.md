# Firefox Sidebar

Customizable sidebar compatible with default firefox layout:

<p align="center">
    <img src="./images/always-visible.png" width="49%" /> <img src="./images/compact.png" width="49%" />
</p>

> [!NOTE]
> Other themes (like [`firefox gnome theme`](https://github.com/rafaelmardojai/firefox-gnome-theme)) need to be installed first but should be compatible with this one

## Configuration

There are two parameters in `about:config`:

| Property                 | Value   | Description                                    |
|------------------------- | ------- |----------------------------------------------- |
| `custom.sidebar.visible` | Boolean | Switch between always visible and compact mode |
| `custom.sidebar.gaps`    | Boolean | Have gaps around the web page or not           |

You can modify the following CSS variables:

| Variable name               | Default value | Description                                       |
|---------------------------- | ------------- |-------------------------------------------------- |
| `--sidebar-width`           | 200px         | Width of the sidebar in both modes                |
| `--urlbar-width`            | 600px         | Width of the urlbar when opened                   |
| `--urlbar-top-position`     | 20vh          | Equivalent to the top margin of the opened urlbar |
| `--compact-margin`          | 5px           | Left margin of the compact sidebar                |
| `--compact-detection-width` | 5px           | How far from the left the sidebar begins to show  |
| `--gap-size`                | 12px          | Thickness of the gaps around the web page         |
| `--gap-radius`              | 10px          | Border radius of the web page                     |
