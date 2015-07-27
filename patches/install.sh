echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git apply $rootdirectory/device/oppo/apq8064-common/patches/frameworks/base/*.patch
echo " "


# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
