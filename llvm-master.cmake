set(LLVM_ROOT "$ENV{LLVM_ROOT}" CACHE PATH "Path to LLVM installation")

set(CMAKE_C_COMPILER ${LLVM_ROOT}/bin/clang)
set(CMAKE_CXX_COMPILER ${LLVM_ROOT}/bin/clang++)

set(CMAKE_CXX_FLAGS
  "-std=c++2a \
   -ftemplate-backtrace-limit=0 \
   -Wall -Wextra \
   -nostdinc++ -isystem ${LLVM_ROOT}/include/c++/v1 "
CACHE STRING "CXX_FLAGS" FORCE)

set(CMAKE_EXE_LINKER_FLAGS
  "-L ${LLVM_ROOT}/lib -l c++ -l c++abi \
  -Wl,-rpath,${LLVM_ROOT}/lib"
CACHE STRING "CMAKE_EXE_LINKER_FLAGS" FORCE)

set(CMAKE_CXX_FLAGS_DEBUG "-O0 -fno-inline -g3 -fstack-protector-all" CACHE STRING "C++ DEBUG Flags" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE "-Ofast -g0 -DNDEBUG" CACHE STRING "C++ Release Flags" FORCE)
