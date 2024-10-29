# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/Users/ramanlamba/Desktop/deribit/oems;/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "Unspecified;core;dev;examples")
set(CPACK_COMPONENT_DEV_DISPLAY_NAME "Development files")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_COMPONENT_INSTALL "ON")
set(CPACK_DEBIAN_DEBUGINFO_PACKAGE "ON")
set(CPACK_DEBIAN_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS "ON")
set(CPACK_DEBIAN_PACKAGE_SOURCE "ON")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "oems built using CMake")
set(CPACK_GENERATOR "TGZ")
set(CPACK_IGNORE_FILES "$(CPACK_SOURCE_IGNORE_FILES);/.git/;/build/;\\.tgz$;\\.tar\\.gz$")
set(CPACK_INSTALLED_DIRECTORIES "/Users/ramanlamba/Desktop/deribit/oems;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/Users/ramanlamba/Desktop/deribit/oems/out/install/GCC 14.2.0 aarch64-apple-darwin23")
set(CPACK_MODULE_PATH "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/cmake")
set(CPACK_NSIS_DISPLAY_NAME "libwebsockets 4.3.2-v4.3.2")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "libwebsockets 4.3.2-v4.3.2")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OBJDUMP_EXECUTABLE "/usr/bin/objdump")
set(CPACK_OSX_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "andy@warmcat.com")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "libwebsockets 4.3.2-v4.3.2")
set(CPACK_PACKAGE_FILE_NAME "libwebsockets-4.3.2-v4.3.2")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "libwebsockets 4.3.2-v4.3.2")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "libwebsockets 4.3.2-v4.3.2")
set(CPACK_PACKAGE_NAME "libwebsockets")
set(CPACK_PACKAGE_RELEASE "1")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "andy@warmcat.com")
set(CPACK_PACKAGE_VERSION "4.3.2-v4.3.2")
set(CPACK_PACKAGE_VERSION_MAJOR "4")
set(CPACK_PACKAGE_VERSION_MINOR "3")
set(CPACK_PACKAGE_VERSION_PATCH "2-v4.3.2")
set(CPACK_PACKAGE_VERSION_PATCH_NUMBER "2")
set(CPACK_RESOURCE_FILE_LICENSE "/Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_COMPONENT_INSTALL "ON")
set(CPACK_RPM_DEBUGINFO_PACKAGE "OFF")
set(CPACK_RPM_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_INSTALL_WITH_EXEC "ON")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_RELEASE_DIST "ON")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES "$(CPACK_SOURCE_IGNORE_FILES);/.git/;/build/;\\.tgz$;\\.tar\\.gz$")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/Users/ramanlamba/Desktop/deribit/oems;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "libwebsockets-4.3.2-v4.3.2")
set(CPACK_SOURCE_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
