cmake_minimum_required(VERSION 3.0)
project(ChatCMD CXX)

set(CMAKE_CXX_STANDARD 17)

# 指定 OpenSSL 库的路径（根据你的系统进行调整）
find_package(OpenSSL REQUIRED)

# 找文件
set(source_dir "${CMAKE_CURRENT_SOURCE_DIR}/src")
# 添加 include 目录
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

file(GLOB_RECURSE source_files "${source_dir}/*.cpp")

add_executable(chatcmd ${source_files})

# 链接 OpenSSL 库
target_link_libraries(chatcmd OpenSSL::SSL OpenSSL::Crypto)
