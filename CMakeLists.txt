set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
	Lock.h 
	Lock.cpp 
	EventDispatch.h 
	EventDispatch.cpp 
	BaseSocket.h 
	BaseSocket.cpp
	Util.h 
	Util.cpp
	Ostype.h 
	Netlib.h   
    Netlib.cpp 
	Netlib_Test.cpp
)

add_executable(netlib ${SOURCE_FILES})
target_link_libraries(netlib pthread)
