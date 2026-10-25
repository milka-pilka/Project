cmake_minimum_required(VERSION 3.16)
project(untitled VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Widgets)
find_package(ZLIB REQUIRED)

set(QUAZIP_ENABLE_TESTS OFF CACHE BOOL "" FORCE)
set(QUAZIP_QT6 ON CACHE BOOL "" FORCE)

# Подключаем QXlsx штатным способом по точному вложенному пути
add_subdirectory(QXlsx-library/QXlsx-master/QXlsx)
add_subdirectory(quazip-master)

# Регистрируем только ВАШИ исходные файлы проекта (без файлов библиотеки)
add_executable(untitled
    main.cpp
    mainwindow.cpp
    mainwindow.h
    mainwindow.ui
)

#З Связываем ваш проект с Qt6 и библиотекой QXlsx (она сама передаст все пути к private)
target_link_libraries(untitled PRIVATE
    Qt6::Widgets
    QXlsx::QXlsx
    QuaZip::QuaZip
)
