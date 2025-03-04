# Firefox Sidebar

Customizable sidebar for Firefox-based browser:

<p align="center">
    <img src="./images/always-visible.png" width="49%" /> <img src="./images/compact.png" width="49%" />
</p>

> [!NOTE]
> Other themes (like [`firefox gnome theme`](https://github.com/rafaelmardojai/firefox-gnome-theme)) need to be installed first but should be compatible with this one.
> If you are using a Firefox fork changing the default layout (like [Zen](https://zen-browser.app/)), compatibility isn't garanteed.

## Installation

To install Firefox Sidebar:
- Make sure `toolkit.legacyUserProfileCustomizations.stylesheets` is set to `true`
- Clone the repo inside your profile's `chrome` folder:
  ```bash
  git clone https://github.com/MrSpaar/Firefox-Sidebar ~/<path to your profile>/chrome/firefox-sidebar
  ```
- Add this line to your profile's `userChrome.css`:
  ```css
  @include "firefox-sidebar/customChrome.css";  /* In your userChrome */
  ```
- Add this line to your profile's `userContent.css`:
  ```css
  @include "firefox-sidebar/customContent.css";  /* In your userContent */
  ```

## Configuration

There are two parameters in `about:config`:

| Property                 | Value   | Description                                    |
|------------------------- | ------- |----------------------------------------------- |
| `custom.sidebar.visible` | Boolean | Switch between always visible and compact mode |
| `custom.sidebar.gaps`    | Boolean | Have gaps around the web page or not           |

`src/variables.css` contains the following CSS variables:

| Variable name               | Default value              | Description                                           |
|---------------------------- | -------------------------- |------------------------------------------------------ |
| `--sidebar-width`           | 200px                      | Width of the sidebar in both modes                    |
| `--urlbar-width`            | 600px                      | Width of the urlbar when opened                       |
| `--urlbar-top-position`     | 20vh                       | Equivalent to the top margin of the opened urlbar     |
| `--compact-margin`          | 5px                        | Left margin of the compact sidebar                    |
| `--compact-detection-width` | 5px                        | How far from the left the sidebar begins to show      |
| `--gap-size`                | 12px                       | Thickness of the gaps around the web page             |
| `--gap-radius`              | 10px                       | Border radius of the web page                         |
| `--sidebar-background`      | --gnome-toolbar-background | Sidebar and gap background color                      |
| `--secondary-background`    | --gnome-window-background  | Bookmark, history and internal pages background color |

> [!NOTE]
> If Gnome colors are not found, it *should* revert to whatever the background colors were.
