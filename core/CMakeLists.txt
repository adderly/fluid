include_directories(
    ${CMAKE_BINARY_DIR}/src
    ${CMAKE_BINARY_DIR}/src/Fluid
)

add_definitions(-DQT_PLUGIN)

set(SOURCES
    plugin.cpp
    clipboard.cpp
    qmldateutils.cpp
    device.cpp
    qqmlsortfilterproxymodel.cpp
    standardpaths.cpp
)

add_library(fluidcore SHARED ${SOURCES})
target_link_libraries(fluidcore Qt5::Gui Qt5::Qml Fluid)

set(FILES
    plugins.qmltypes
    qmldir
    Object.qml
    Utils.qml
)

install(TARGETS fluidcore LIBRARY
        DESTINATION ${QML_INSTALL_DIR}/Fluid/Core)
install(FILES ${FILES}
        DESTINATION ${QML_INSTALL_DIR}/Fluid/Core)
