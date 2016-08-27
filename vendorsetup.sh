for combo in $(curl -s https://raw.githubusercontent.com/Hexa-Project/HEXABOT/cm-14.0/hexabot-supported-device | sed -e 's/#.*$//' | grep cm-14.0 | awk '{printf "kdp_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
