# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED SIMPLEIMAGEFILTER_SUGAR_CMAKE_)
  return()
else()
  set(SIMPLEIMAGEFILTER_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)
include(sugar_include)

sugar_files(
    SIMPLEIMAGEFILTER_SOURCES
    main.m
)

sugar_files(
    SIMPLEIMAGEFILTER_RESOURCES
    Default-568h@2x.png
)

sugar_files(
    SIMPLEIMAGEFILTER_PLIST
    Info.plist.in
)