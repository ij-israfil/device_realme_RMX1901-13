
#Syncing KernelSU to latest source and avoid a conflict
echo "Syncing KernelSU to latest source [1/2]"
cd kernel/realme/RMX1901 && git submodule sync && git submodule update --init --recursive && cd KernelSU && git checkout main && git pull && touch Android.mk && cd ../../../..

# Realme In-Screen Proximity Patch
echo 'Patching Realme In-Screen Proximity [2/2]'
cd frameworks/base && git fetch https://github.com/ij-israfil/proximity_patch.git && git cherry-pick de630e735cdbb68a606d3bbbf8b1674be31bab2d && cd ../..