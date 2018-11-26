set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1z")

file(GLOB_RECURSE SRC "*.h" "*.cc")

add_library(ccspec SHARED ${SRC})

set_target_properties(ccspec PROPERTIES 
  CXX_STANDARD 17
  CXX_EXTENSIONS OFF
  LINKER_LANGUAGE CXX
  VERSION "0.1.0")

target_include_directories(ccspec PUBLIC "${CMAKE_SOURCE_DIR}/include")

if(LIB_DIR)
  set(LIB_DIR "${LIB_DIR}")
else() 
  set(LIB_DIR "lib")
endif()

install(TARGETS ccspec DESTINATION "${LIB_DIR}")
