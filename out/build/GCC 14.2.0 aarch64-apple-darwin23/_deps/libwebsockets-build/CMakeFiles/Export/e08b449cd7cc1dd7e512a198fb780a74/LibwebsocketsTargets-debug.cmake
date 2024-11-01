#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "websockets" for configuration "Debug"
set_property(TARGET websockets APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(websockets PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libwebsockets.a"
  )

list(APPEND _cmake_import_check_targets websockets )
list(APPEND _cmake_import_check_files_for_websockets "${_IMPORT_PREFIX}/lib/libwebsockets.a" )

# Import target "websockets_shared" for configuration "Debug"
set_property(TARGET websockets_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(websockets_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libwebsockets.19.dylib"
  IMPORTED_SONAME_DEBUG "/Users/ramanlamba/Desktop/deribit/oems/out/install/GCC 14.2.0 aarch64-apple-darwin23/lib/libwebsockets.19.dylib"
  )

list(APPEND _cmake_import_check_targets websockets_shared )
list(APPEND _cmake_import_check_files_for_websockets_shared "${_IMPORT_PREFIX}/lib/libwebsockets.19.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
