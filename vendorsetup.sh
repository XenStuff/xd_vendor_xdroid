rm -rf vendor && repo sync --force-sync > p
rm p
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
