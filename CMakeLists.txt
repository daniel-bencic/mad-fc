cmake_minimum_required(VERSION 3.16.3)
project(mad-fc C)

add_custom_command(${PROJECT_NAME} POST_BUILD ${PROJECT_SOURCE_DIR}/script/load_hex.bash ${PROJECT_NAME}.hex)
