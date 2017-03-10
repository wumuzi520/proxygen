#
# Copyright (C) 2015, Yeolar
#
# - Try to find openssl
# This will define
# ZLIB_FOUND
# ZLIB_INCLUDE_DIR
# ZLIB_LIBRARIES

cmake_minimum_required(VERSION 2.8.8)

include(FindPackageHandleStandardArgs)

find_library(ZLIB_LIBRARIES libz.a PATHS /usr/local/lib)
find_path(ZLIB_INCLUDE_DIR "zlib.h" PATHS /usr/local/include)

find_package_handle_standard_args(ZLIB
    REQUIRED_ARGS ZLIB_INCLUDE_DIR ZLIB_LIBRARIES)
