include_directories( ${PROTOBUF_ROOT}/src )

# config.h is generated from cmake now, so use on all platforms
add_definitions( -DHAVE_CONFIG_H )

if( MSVC )
  add_definitions(
    -D_CRT_SECURE_NO_WARNINGS=1
    /wd4244 /wd4267 /wd4018 /wd4355 /wd4800 /wd4251 /wd4996 /wd4146 /wd4305
    )
else()
  add_definitions( -Wno-deprecated )
endif()

