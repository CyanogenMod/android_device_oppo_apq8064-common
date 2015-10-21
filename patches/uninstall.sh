echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/native
echo "Reverting frameworks/native patches..."
git apply --reverse $rootdirectory/device/oppo/apq8064-common/patches/frameworks/native/*.patch
echo " "

cd $rootdirectory
cd system/core
echo "Reverting system/core patches..."
git apply --reverse $rootdirectory/device/oppo/apq8064-common/patches/system/core/*.patch
echo " "


# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
