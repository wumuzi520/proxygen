#
# Copyright (C) 2015, Yeolar
#
# - Try to find openssl
# This will define
# OPENSSL_FOUND
# OPENSSL_INCLUDE_DIR
# OPENSSL_LIBRARIES

cmake_minimum_required(VERSION 2.8.8)

include(FindPackageHandleStandardArgs)

find_library(OPENSSL_LIBRARY libssl.a PATHS /usr/local/lib)
find_library(CRYPTO_LIBRARY libcrypto.a PATHS /usr/local/lib)
find_path(OPENSSL_INCLUDE_DIR "openssl/ssl.h" PATHS /usr/local/include)

set(OPENSSL_LIBRARIES ${OPENSSL_LIBRARY} ${CRYPTO_LIBRARY})

find_package_handle_standard_args(OpenSSL
    REQUIRED_ARGS OPENSSL_INCLUDE_DIR OPENSSL_LIBRARIES)
