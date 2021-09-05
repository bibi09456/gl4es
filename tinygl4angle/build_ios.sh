set -e

clang -isysroot /usr/share/SDKs/iPhoneOS.sdk $CFLAGS -o libtinygl4angle.dylib -dynamiclib -rpath /Applications/PojavLauncher.app/Frameworks -L/Applications/PojavLauncher.app/Frameworks -F/Applications/PojavLauncher.app/Frameworks -framework Foundation -framework MetalANGLE -I../src/gl -Iinclude \
  tinygl4angle.c \
  ../src/gl/string_utils.c

echo "BUILD SUCCESS"
