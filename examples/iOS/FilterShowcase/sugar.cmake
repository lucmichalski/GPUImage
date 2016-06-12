# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED FILTERSHOWCASE_SUGAR_CMAKE_)
  return()
else()
  set(FILTERSHOWCASE_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)
include(sugar_include)

sugar_files(
    FILTERSHOWCASE_SOURCES
    main.m
)

sugar_files(
    FILTERSHOWCASE_RESOURCES
    Default-568h@2x.png
)

sugar_files(
    FILTERSHOWCASE_PLIST
    Info.plist.in
)