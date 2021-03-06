set( GTEST_INCLUDE_SEARCH
  ${CMAKE_SOURCE_DIR}/thirdparty/gtest/include
)

set( GTEST_LIB_SEARCH
  ${CMAKE_SOURCE_DIR}/thirdparty/gtest
)

find_path(GTEST_INCLUDE
  NAMES gtest/gtest.h
  PATHS ${GTEST_INCLUDE_SEARCH}
  NO_DEFAULT_PATH
)

find_library(GTEST_LIBRARY
  NAMES gtest
  PATHS ${GTEST_LIB_SEARCH}
  NO_DEFAULT_PATH
)

find_library(GTEST_LIBRARY_MAIN
  NAMES gtest_main
  PATHS ${GTEST_LIB_SEARCH}
  NO_DEFAULT_PATH
)

if (GTEST_INCLUDE AND GTEST_LIBRARY AND GTEST_LIBRARY_MAIN)
  set(GTEST_LIBS ${GTEST_LIBRARY} ${GTEST_LIBRARY_MAIN})
  set(GTEST_INCLUDE_DIR ${GTEST_INCLUDE})
  set(GTEST_FOUND TRUE)
endif()

mark_as_advanced(
  GTEST_INCLUDE_DIR
  GTEST_LIBS
)
