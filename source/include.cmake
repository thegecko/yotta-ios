set_target_properties(${PROJECT_NAME}
    PROPERTIES
    LINK_FLAGS "-Wl,-ObjC"
    MACOSX_BUNDLE TRUE
    MACOSX_BUNDLE_INFO_PLIST "${CMAKE_CURRENT_LIST_DIR}/Info.plist"
    XCODE_ATTRIBUTE_PRODUCT_NAME "Yotta iOS"
)

target_link_libraries(${PROJECT_NAME}
    "-framework UIKit"
)