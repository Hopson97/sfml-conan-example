cmake_minimum_required(VERSION 3.1)
project(sfml_test)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(sfml_test
    src/main.cpp
)


#Set C++17
target_compile_features(sfml_test PUBLIC cxx_std_17)
set_target_properties(sfml_test PROPERTIES CXX_EXTENSIONS OFF)

#Set flags
if(MSVC)
    target_compile_options(sfml_test PRIVATE 
        /W4 /WX)
else()
    target_compile_options(sfml_test PRIVATE 
        -Wall -Wextra -pedantic -Werror)
endif()

target_link_libraries(
    ${PROJECT_NAME} 
    ${CONAN_LIBS}
)