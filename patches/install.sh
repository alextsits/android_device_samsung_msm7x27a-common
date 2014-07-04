echo "Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git apply --whitespace=fix $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_base/*.patch
cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_native/*.patch
cd $rootdirectory
cd system/core
echo "Applying system/core patches..."
git apply --whitespace=fix $rootdirectory/device/samsung/msm7x27a-common/patches/system_core/*.patch
cd $rootdirectory
cd packages/apps/ROMControl
echo "Cherry-picking in ROMControl to fix libs..."
git cherry-pick af3d08da #fix libs
git cherry-pick 48dc333652b868b9434fb0029420ebcfb5d9c8b6 #fix cs translations
git cherry-pick 0bf9d4a8f71b25f146dacd8562449666acecb648 #fix hu translations
git cherry-pick 4cf500c2836708d5c4b0d8842b3a3c2cc1d21e16 #remove mGerrit dependency
cd $rootdirectory
cd vendor/aokp
echo "Cherry-picking in vendor/aokp..."
git cherry-pick 3dd4ee37b1bb2100bd3e832f8ca0bf3eada7d026 #add mGerrit prebuilt
git checkout ff6583fc1ce24e7117dad2fbfe09bb784d9536d4 --theirs -- prebuilt/common/app/mGerrit.apk  #bump mGerrit to v2.07
cd $rootdirectory
