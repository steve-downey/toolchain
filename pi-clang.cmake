SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)
SET(CMAKE_SYSROOT $ENV{HOME}/mnt/rpi)

set(triple arm-linux-gnueabihf)

set(CMAKE_C_COMPILER clang)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_COMPILER_TARGET ${triple})

SET(CMAKE_FIND_ROOT_PATH $ENV{HOME}/mnt/rpi)
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

SET(CMAKE_CXX_FLAGS "\
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/include/c++/6 \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/include/c++/6/arm-linux-gnueabihf \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/include/c++/6/backward \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/include \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/include-fixed \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/include"
  CACHE STRING "CXX_FLAGS" FORCE)

SET(CMAKE_C_FLAGS "\
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/include \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/include-fixed \
 -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/include"
  CACHE STRING "C_FLAGS" FORCE)

SET(CMAKE_EXE_LINKER_FLAGS "\
 -L /usr/lib/gcc-cross/arm-linux-gnueabihf/6 \
 -L /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/lib/../lib \
 -L /usr/lib/gcc-cross/arm-linux-gnueabihf/6/../../../../arm-linux-gnueabihf/lib \
 -static-libgcc -static-libstdc++"
  CACHE STRING "LINKER FLAGS" FORCE)

SET( THREADS_PTHREAD_ARG
     "0"
     CACHE STRING "Result from TRY_RUN" FORCE)
