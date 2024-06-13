dev_id=$(xinput --list | grep -Po ".*Touchpad.*id=\K\d*(?=.*)")
prop_id=$(xinput --list-props $dev_id | grep -Po ".*Natural\sScrolling\sEnabled\s\(\K\d*(?=.*)")
xinput --set-prop $dev_id $prop_id 1
