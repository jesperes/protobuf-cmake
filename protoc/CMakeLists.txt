project(protoc)

include(../protobuf-common.cmake)

set(SOURCES ${PROTOBUF_ROOT}/src/google/protobuf/compiler/main.cc)

add_definitions(-D_CONSOLE)

find_package(Threads)

add_executable(protoc ${SOURCES})
target_link_libraries(protoc libprotoc)
target_link_libraries(protoc ${CMAKE_THREAD_LIBS_INIT})
