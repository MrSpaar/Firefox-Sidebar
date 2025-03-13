#!/usr/bin/bash

NC='\033[0m'
RED='\033[1;31m'
BLUE='\033[1;34m'
GRAY='\033[0;90m'
GRAY_UL='\033[4;90m'

found_paths=()
base_paths=(
    ~/.mozilla/firefox
    ~/.var/app/org.mozilla.firefox/.mozilla/firefox

    ~/.librewolf
    ~/.var/app/io.gitlab.librewolf-community/.librewolf

    ~/.floorp
    ~/.var/app/one.ablaze.floorp/.floorp

    ~/.waterfox
    ~/.var/app/net.waterfox.waterfox
)

for path in "${base_paths[@]}"; do
    [[ ! -d "$path" ]] && continue

    while IFS= read -r line; do
        profile=$(echo "$line" | cut -c 6-)
        found_paths+=("$path/$profile")
    done < <(grep "^Path=" "$path/profiles.ini")
done

if [ "${#found_paths[@]}" -eq 0 ]; then
    echo -e "😵 ${RED}No firefox, librewolf, floorp or waterfox profile found"
    exit 1
fi

index=-1
echo -e "🗳️  ${BLUE}Select the profile you want to theme:${NC}"

for path in "${found_paths[@]}"; do
    ((index++))
    echo -e "  $index. ${GRAY_UL}${path}${NC}"
done

while true; do
    echo -e "${BLUE}>${NC} \c"
    read index

    if [[ "$index" =~ ^[0-9]+$ ]] && [ "$index" -ge 0 ] && [ "$index" -lt "${#found_paths[@]}" ]; then
        # Valid selection, break the loop
        break
    else
        echo -e "😵 ${RED}Invalid selection${NC}"
    fi
done

echo -e "💿 ${BLUE}Pulling Firefox Sidebar theme...${GRAY}"

if [ ! -d "/tmp/firefox-sidebar" ]; then
    git clone https://github.com/MrSpaar/Firefox-Sidebar.git /tmp/firefox-sidebar
    git -C /tmp/firefox-sidebar config color.ui false
else
    git -C /tmp/firefox-sidebar pull
fi

echo -e "🛠️ ${BLUE} Installing the theme...${GRAY}"
cp -TRv /tmp/firefox-sidebar/src "${found_paths[$index]}"
echo -e "☑️  ${BLUE}Theme installed successfully${NC}"
