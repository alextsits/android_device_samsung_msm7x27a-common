echo "Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_base/*.patch
cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_native/*.patch
cd $rootdirectory
cd frameworks/av
echo "Applying frameworks/av patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_av/*.patch
cd $rootdirectory
cd system/core
echo "Applying system/core patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/system_core/*.patch
cd $rootdirectory
cd vendor/tmobile/apps/ThemeChooser
echo "Applying ThemeChooser patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/vendor_tmobile_apps_ThemeChooser/*.patch
cd $rootdirectory
cd packages/apps/FM2
echo "Applying FM2 patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/packages_apps_FM2/*.patch
cd $rootdirectory
