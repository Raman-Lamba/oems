# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-src"
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-build"
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix"
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix/tmp"
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp"
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix/src"
  "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
