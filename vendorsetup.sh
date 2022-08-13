rm -rf vendor/xdroidui vendor/google/gms vendor/gms
git clone https://gitlab.com/Project-Awaken/android_vendor_gms vendor/gms
git clone https://github.com/XenStuff/xd_vendor_xdroidui vendor/xdroidui

export AOSP_REVISION=$(grep "default revision" ".repo/manifests/default.xml" | awk -F '/' '{print $3}' | awk -F '"' '{print $1}')

# Welcome Msg
echo "=========================================="
echo " xd. xdroidOS Build Environment "
echo "=========================================="
echo "AOSP Revision: $AOSP_REVISION"
export KBUILDBUILDUSER=xenxynon 
export KBUILDBUILDHOST=xenxynon 
export BUILD_USERNAME=xenxynon
export BUILD_HOSTNAME=xenxynon
