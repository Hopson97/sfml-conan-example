echo "Ensure you have ran conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan"

mkdir build
cd build
conan install ..

cmake .. -G "Visual Studio 16"
cmake --build . --config Release