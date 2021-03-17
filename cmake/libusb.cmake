if(gRPC_LIBUSB_PROVIDER STREQUAL "package")
  find_package(libusb-1.0 REQUIRED)
  set(_gRPC_LIBUSB_LIBRARIES ${LIBUSB_LIBRARIES})
  set(_gRPC_LIBUSB_INCLUDE_DIR ${LIBUSB_INCLUDE_DIRS})
  set(_gRPC_FIND_LIBUSB "if(NOT libusb-1.0_FOUND)\n  find_package(libusb-1.0)\nendif()")
endif()