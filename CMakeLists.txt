cmake_minimum_required (VERSION 2.6)
project (tetris)

add_executable(tetris game/main.c)

add_library(render game/render.c)
add_library(logic game/logic.c)

add_subdirectory(glfw-3.1.2)
include_directories(glfw-3.1.2/include)

target_link_libraries(tetris glfw ${GLFW_LIBRARIES})
target_link_libraries(tetris glfw ${OPENGL_glu_LIBRARY} ${GLFW_LIBRARIES})

target_link_libraries(tetris render)
target_link_libraries(tetris logic)
