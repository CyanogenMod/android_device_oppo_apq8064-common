echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git apply $rootdirectory/device/oppo/apq8064-common/patches/frameworks/native/*.patch
echo " "

cd $rootdirectory
cd system/core
echo "Applying system/core patches..."
git apply $rootdirectory/device/oppo/apq8064-common/patches/system/core/*.patch
echo " "


# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
