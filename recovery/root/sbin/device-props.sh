#!/system/bin/sh
# This script is needed to automatically set device props.
load_excalibur()
{
    resetprop "ro.product.model" "Redmi Note 9 Pro Max"
    resetprop "ro.product.name" "excalibur"
    resetprop "ro.build.product" "excalibur"
    resetprop "ro.product.device" "excalibur"
    resetprop "ro.vendor.product.device" "excalibur"
}

project=$(getprop ro.boot.hwname)
echo $project

case $project in
    "excalibur")
        load_excalibur
        ;;
    *)
        load_excalibur
        ;;
esac

exit 0
