#!/usr/bin/bash

found_paths=()
base_paths=(
    ~/.mozilla/firefox
    ~/.var/app/org.mozilla.firefox/.mozilla/firefox

    ~/.librewolf
    ~/.var/app/io.gitlab.librewolf-community/.librewolf

    ~/.zen
    ~/.var/app/app.zen_browser.zen/.zen

    ~/.floorp
    ~/.var/app/one.ablaze.floorp/.floorp
)

for path in "${base_paths[@]}"; do
    [[ ! -d "$path" ]] && continue

    profile=("$(cat $path/profiles.ini | grep "^Path=" | cut -c 6-)")
    found_paths+=("$path/$profile")
done

if [ "${#found_paths[@]}" -eq 0 ]; then
    echo "No profiles found :("
    exit 1
fi

index=-1
echo "Select the profile you want to theme:"

for path in "${found_paths[@]}"; do
    ((index++))
    echo -e "  $index. ${path}"
done

read -p "> " index

if [ "$index" -lt 0 ] || [ "$index" -gt "$((${#found_paths[@]} - 1))" ]; then
    echo "Invalid selection :("
    exit 1
fi

git clone https://github.com/MrSpaar/Firefox-Sidebar.git /tmp/firefox-sidebar
mv /tmp/firefox-sidebar/src "${found_paths[$index]}"

echo "Theme installed for profile ${found_paths[$index]}"
