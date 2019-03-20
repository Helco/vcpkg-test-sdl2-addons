cmake_minimum_required(VERSION 3.12)
if(COMMAND cmake_policy)
  cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

project(Test)

find_package(SDL2 CONFIG REQUIRED)
find_package(SDL2-ttf CONFIG REQUIRED)
find_package(SDL2-image CONFIG REQUIRED)
find_package(SDL2-mixer CONFIG REQUIRED)
find_package(SDL2-net CONFIG REQUIRED)

add_executable(test
    main.cpp
)
target_link_libraries(test PRIVATE
    SDL2::SDL2
    SDL2::SDL2_ttf
    SDL2::SDL2_image
    SDL2::SDL2_mixer
    SDL2::SDL2_net
)
