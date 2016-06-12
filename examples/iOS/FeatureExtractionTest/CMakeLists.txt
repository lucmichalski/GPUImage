cmake_minimum_required(VERSION 3.0)

include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.14.25.tar.gz"
    SHA1 "a7ba9775c1206ced7cac204db802b116736ca481"
)

project(GPUImage)

hunter_add_package(Sugar)
include("${SUGAR_ROOT}/cmake/Sugar")
include(sugar_include)

sugar_include("./")

add_executable(
    FeatureExtractionTest
    ${FEATUREEXTRACTIONTEST_SOURCES}
    ${FEATUREEXTRACTIONTEST_RESOURCES}
    ${FEATUREEXTRACTIONTEST_SHADERS}
)

set_source_files_properties(
    ${FEATUREEXTRACTIONTEST_SHADERS}
    PROPERTIES
    MACOSX_PACKAGE_LOCATION
    .
)

set_target_properties(
    FeatureExtractionTest
    PROPERTIES
    MACOSX_BUNDLE YES
    MACOSX_BUNDLE_INFO_PLIST "${FEATUREEXTRACTIONTEST_PLIST}"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
    XCODE_ATTRIBUTE_TARGETED_DEVICE_FAMILY "1,2"
    XCODE_ATTRIBUTE_CLANG_ENABLE_OBJC_ARC NO
    XCODE_ATTRIBUTE_INSTALL_PATH "${CMAKE_BINARY_DIR}/ProductRelease"
    XCODE_ATTRIBUTE_COMBINE_HIDPI_IMAGES "NO"
    RESOURCE "${FEATUREEXTRACTIONTEST_RESOURCES};${FEATUREEXTRACTIONTEST_SHADERS}"
)

set_target_properties(
    FeatureExtractionTest
    PROPERTIES
    XCODE_ATTRIBUTE_PRODUCT_NAME
    "FeatureExtractionTest"
    XCODE_ATTRIBUTE_BUNDLE_IDENTIFIER
    "com.michalsi.luc.FeatureExtractionTest"
)

target_link_libraries(
    FeatureExtractionTest
    PRIVATE
    "-framework CoreGraphics"
    "-framework Foundation"
    "-framework UIKit"
)

if(TARGET gpuimage)
  add_library(GPUImage::gpuimage gpuimage)
else()
  hunter_add_package(GPUImage)
  find_package(GPUImage CONFIG REQUIRED)
  target_include_directories(
      FeatureExtractionTest PRIVATE "${GPUImage_DIR}/../../../include/GPUImage"
  )
endif()

target_link_libraries(FeatureExtractionTest PRIVATE GPUImage::gpuimage)

target_include_directories(FeatureExtractionTest PRIVATE "./Classes")