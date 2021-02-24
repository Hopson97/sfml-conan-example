cmake_minimum_required(VERSION 3.1)
project(sfml_test)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(${PROJECT_NAME}
    src/main.cpp
)

#Set C++17
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_17)
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_EXTENSIONS OFF)

#Set flags
if(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE 
        /W4 /WX)
else()
    target_compile_options(${PROJECT_NAME} PRIVATE 
        -Wall -Wextra -pedantic -Werror)
endif()

target_link_libraries(
    ${PROJECT_NAME} 
    ${CONAN_LIBS}
)