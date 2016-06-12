# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED MULTIVIEWFILTEREXAMPLE_SUGAR_CMAKE_)
  return()
else()
  set(MULTIVIEWFILTEREXAMPLE_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)
include(sugar_include)

sugar_include(Classes)
sugar_include(Shaders)

sugar_files(
    MULTIVIEWFILTEREXAMPLE_SOURCES
    main.m
)

sugar_files(
    MULTIVIEWFILTEREXAMPLE_RESOURCES
    Default-568h@2x.png
)

sugar_files(
    MULTIVIEWFILTEREXAMPLE_PLIST
    Info.plist.in
)