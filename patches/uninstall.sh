echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/base
echo "Reverting frameworks/base patches..."
git apply --reverse $rootdirectory/device/oppo/apq8064-common/patches/frameworks/base/*.patch
echo " "


# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
