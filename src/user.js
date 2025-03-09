// Hide bookmarks bar
user_pref("browser.toolbars.bookmarks.visibility", "never");

// Show at most 5 results in the floating urlbar
user_pref("browser.urlbar.maxRichResults", 5);

// Allow styling with userChrome.css and userContent.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Disable search engine and top sites suggestions
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.topsites", false);

// Set homepage to newtab page
user_pref("browser.startup.homepage", "about:newtab");
