# Firefox Sidebar

Customizable sidebar for Firefox-based browser, only works with [`firefox gnome theme`](https://github.com/rafaelmardojai/firefox-gnome-theme) for now:

<p align="center">
    <img src="./images/always-visible.png" width="49%" /> <img src="./images/compact.png" width="49%" />
</p>

<<<<<<< HEAD
## Installation

To install Firefox Sidebar:
- Make sure [`firefox gnome theme`](https://github.com/rafaelmardojai/firefox-gnome-theme) is installed
- Clone the repo:
  ```bash
  git clone https://github.com/MrSpaar/Firefox-Sidebar ~/<path to your profile>/chrome/firefox-gnome-theme/firefox-sidebar
  ```
- Create `chrome/firefox-gnome-theme/customChrome.css`:
  ```css
  @import "firefox-sidebar/customChrome.css";
  ```
- Create `chrome/firefox-gnome-theme/customContent.css`:
  ```css
  @import "firefox-sidebar/customContent.css";
  ```
=======
To install the theme, execute the following command:
```bash
curl -s -o- https://raw.githubusercontent.com/mrspaar/firefox-sidebar/master/install.sh | bash
```
>>>>>>> 5871b05 (refactor: standalone theme with installer)

## Configuration

There are two parameters in `about:config`:

| Property                 | Value   | Description                                    |
|------------------------- | ------- |----------------------------------------------- |
| `custom.sidebar.visible` | Boolean | Switch between always visible and compact mode |
| `custom.sidebar.gaps`    | Boolean | Have gaps around the web page or not           |

You can modify `fs_variables.css`:

| Variable name               | Default value              | Description                                           |
|---------------------------- | -------------------------- |------------------------------------------------------ |
| `--sidebar-width`           | 200px                      | Width of the sidebar in both modes                    |
| `--floating-urlbar-width`   | 600px                      | Width of the urlbar when opened                       |
| `--urlbar-top-position`     | 20vh                       | Equivalent to the top margin of the opened urlbar     |
| `--compact-margin`          | 5px                        | Left margin of the compact sidebar                    |
| `--compact-detection-width` | 5px                        | How far from the left the sidebar begins to show      |
| `--gap-size`                | 12px                       | Thickness of the gaps around the web page             |
| `--gap-radius`              | 10px                       | Border radius of the web page                         |
<<<<<<< HEAD
=======
| `--sidebar-background`      | --gnome-toolbar-background | Sidebar and gap background color                      |
| `--secondary-background`    | --gnome-window-background  | Bookmark, history and internal pages background color |
| `--tab-background`          | --gnome-selected-color     | Tab and empty urlbar background color                 |
>>>>>>> 5871b05 (refactor: standalone theme with installer)
