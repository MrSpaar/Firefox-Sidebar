#!/usr/bin/bash

NC='\033[0m'
RED='\033[0;31m'
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
    echo -e "😵 ${RED}No profiles found"
    exit 1
fi

index=-1
echo -e "🗳️  ${BLUE}Select the profile you want to theme:${NC}"

for path in "${found_paths[@]}"; do
    ((index++))
    echo -e "  $index. ${GRAY_UL}${path}${NC}"
done

echo -e "${BLUE}>${NC} \c"
read index

if [ "$index" -lt 0 ] || [ "$index" -gt "$((${#found_paths[@]} - 1))" ]; then
    echo -e "😵 ${RED}Invalid selection${NC}"
    exit 1
fi

echo -e "💿 ${BLUE}Pulling Firefox Sidebar theme...${GRAY}"

if [ ! -d "/tmp/firefox-sidebar" ]; then
    git clone https://github.com/MrSpaar/Firefox-Sidebar.git /tmp/firefox-sidebar
else
    git -C /tmp/firefox-sidebar pull
fi

echo -e "🛠️ ${BLUE} Installing the theme...${GRAY}"
cp -TRv /tmp/firefox-sidebar/src "${found_paths[$index]}"
echo -e "☑️  ${BLUE}Theme installed successfully${NC}"
