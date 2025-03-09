#!/usr/bin/bash

found_paths=()
base_paths=(
    ~/.mozilla/firefox
    ~/.var/app/org.mozilla.firefox/.mozilla/firefox

    ~/.librewolf
    ~/.var/app/io.gitlab.librewolf-community/.librewolf

    ~/.floorp
    ~/.var/app/one.ablaze.floorp/.floorp
)

for path in "${base_paths[@]}"; do
    [[ ! -d "$path" ]] && continue

    while IFS= read -r line; do
        profile=$(echo "$line" | cut -c 6-)
        found_paths+=("$path/$profile")
    done < <(grep "^Path=" "$path/profiles.ini")
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

if [ ! -d "/tmp/firefox-sidebar" ]; then
    git clone https://github.com/MrSpaar/Firefox-Sidebar.git /tmp/firefox-sidebar
else
    git -C /tmp/firefox-sidebar pull
fi

cp -TRv /tmp/firefox-sidebar/src "${found_paths[$index]}"
echo "Theme installed for profile ${found_paths[$index]}"
