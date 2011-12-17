export USE_CCACHE=1
export CCACHE_DIR=/home/lord/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
source build/envsetup.sh
lunch lord_ace-eng
export USE_CCACHE=1
export CCACHE_DIR=/home/lord/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
make -j6 lord
