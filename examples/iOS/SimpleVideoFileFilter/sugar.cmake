# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED SIMPLEVIDEOFILEFILTER_SUGAR_CMAKE_)
  return()
else()
  set(SIMPLEVIDEOFILEFILTER_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)
include(sugar_include)

sugar_files(
    SIMPLEVIDEOFILEFILTER_SOURCES
    main.m
)

sugar_files(
    SIMPLEVIDEOFILEFILTER_RESOURCES
    Default-568h@2x.png
)

sugar_files(
    SIMPLEVIDEOFILEFILTER_PLIST
    Info.plist.in
)