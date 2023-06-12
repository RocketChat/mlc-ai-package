echo on

cd tvm
rd /s /q build
mkdir build
cd build

cmake -A x64 -Thost=x64 ^
      -G "Visual Studio 16 2019" ^
      -DUSE_LLVM="llvm-config --link-static" ^
      -DUSE_RPC=ON ^
      -DUSE_VULKAN=ON ^
      ..

cmake --build . --config Release -- /m

cd ..\..