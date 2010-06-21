project(Protobuf)
cmake_minimum_required(VERSION 2.6)

option(PROTOBUF_ROOT "Location of protobuf sources.")
if (NOT PROTOBUF_ROOT)
  message(FATAL_ERROR "PROTOBUF_ROOT must be set to the location of protobuf sources.")
endif()

message(STATUS "Protobuf sources in ${PROTOBUF_ROOT}")
add_subdirectory(libprotobuf)
add_subdirectory(libprotoc)
add_subdirectory(protoc)
