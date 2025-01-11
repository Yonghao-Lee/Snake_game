cmake_minimum_required(VERSION 3.10)
project(my_sfml_project_bonus)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

list(APPEND CMAKE_PREFIX_PATH "/opt/homebrew")

set(SFML_DIR "/opt/homebrew/opt/sfml@2/lib/cmake/SFML")
find_package(SFML 2.5 COMPONENTS graphics window system REQUIRED)

file(COPY ${CMAKE_SOURCE_DIR}/fonts DESTINATION ${CMAKE_BINARY_DIR})
add_executable(my_sfml_project_bonus main.cpp)

target_link_libraries(my_sfml_project_bonus PRIVATE sfml-graphics sfml-window sfml-system)
