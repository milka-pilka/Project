# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  [[CMakeFiles\untitled_autogen.dir\AutogenUsed.txt]]
  [[CMakeFiles\untitled_autogen.dir\ParseCache.txt]]
  [[QXlsx-library\QXlsx-master\QXlsx\CMakeFiles\QXlsx_autogen.dir\AutogenUsed.txt]]
  [[QXlsx-library\QXlsx-master\QXlsx\CMakeFiles\QXlsx_autogen.dir\ParseCache.txt]]
  [[QXlsx-library\QXlsx-master\QXlsx\QXlsx_autogen]]
  "untitled_autogen"
  )
endif()
