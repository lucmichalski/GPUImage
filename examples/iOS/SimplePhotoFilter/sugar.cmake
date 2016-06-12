# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED SIMPLEPHOTOFILTER_SUGAR_CMAKE_)
  return()
else()
  set(SIMPLEPHOTOFILTER_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)
include(sugar_include)

sugar_files(
   SIMPLEPHOTOFILTER_SOURCES
    main.m
)

sugar_files(
    SIMPLEPHOTOFILTER_RESOURCES
    Default-568h@2x.png
)

sugar_files(
    SIMPLEPHOTOFILTER_PLIST
    Info.plist.in
)