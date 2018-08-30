# This CMakeLists.txt is not meant to actually work!
# It only serves as a dummy project to make CLion work properly when it comes to symbol resolution and all the nice
# features dependent on that. Building must still be done on the command line using the automake build chain
# If you load this project in CLion and would like to run/debug executables, make sure to remove the "Build" entry from
# the run/debug configuration as otherwise CLion will try to build this project with cmake, failing horribly.
# You'll also have to manually change the executable in the configuration to the correct path of the already built executable

cmake_minimum_required(VERSION 3.7)
project(gozer)

#set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_custom_target(gozer COMMAND make -C ${gozer_SOURCE_DIR}
        CLION_EXE_DIR=${PROJECT_BINARY_DIR})

#include_directories(
#        src
#        src/leveldb/include
#        src/univalue/include
#)

include_directories(.)
include_directories(build-aux)
include_directories(contrib)
include_directories(dash-docs)
include_directories(depends)
include_directories(doc)
include_directories(docker)
include_directories(qa)
include_directories(share)
include_directories(src)
include_directories(src/bench)
include_directories(src/compat)
include_directories(src/config)
include_directories(src/consensus)
include_directories(src/crypto)
include_directories(src/crypto/ctaes)
include_directories(src/leveldb)
include_directories(src/leveldb/db)
include_directories(src/leveldb/doc)
include_directories(src/leveldb/helpers)
include_directories(src/leveldb/helpers/memenv)
include_directories(src/leveldb/include)
include_directories(src/leveldb/include/leveldb)
include_directories(src/leveldb/issues)
include_directories(src/leveldb/port)
include_directories(src/leveldb/port/win)
include_directories(src/leveldb/table)
include_directories(src/leveldb/util)
include_directories(src/obj)
include_directories(src/obj-test)
include_directories(src/policy)
include_directories(src/primitives)
include_directories(src/qt)
include_directories(src/qt/test)
include_directories(src/rpc)
include_directories(src/script)
include_directories(src/secp256k1)
include_directories(src/secp256k1/build-aux)
include_directories(src/secp256k1/contrib)
include_directories(src/secp256k1/include)
include_directories(src/secp256k1/obj)
include_directories(src/secp256k1/sage)
include_directories(src/secp256k1/src)
include_directories(src/secp256k1/src/asm)
include_directories(src/secp256k1/src/java)
include_directories(src/secp256k1/src/modules)
include_directories(src/secp256k1/src/modules/ecdh)
include_directories(src/secp256k1/src/modules/recovery)
include_directories(src/support)
include_directories(src/support/allocators)
include_directories(src/test)
include_directories(src/univalue)
include_directories(src/univalue/build-aux)
include_directories(src/univalue/gen)
include_directories(src/univalue/include)
include_directories(src/univalue/lib)
include_directories(src/univalue/pc)
include_directories(src/univalue/test)
include_directories(src/wallet)
include_directories(src/wallet/test)
include_directories(src/zmq)

add_definitions(
        -DENABLE_WALLET=1
)

file(GLOB SOURCE_FILES
        src/bench/*.cpp
        src/bench/*.h
        src/compat/*.cpp
        src/compat/*.h
        src/consensus/*.h
        src/consensus/*.cpp
        src/crypto/*.c
        src/crypto/*.h
        src/crypto/*.cpp
        src/leveldb/db/*.cc
        src/leveldb/db/*.h
        src/leveldb/include/*.h
        src/policy/*.cpp
        src/policy/*.h
        src/primitives/*.cpp
        src/primitives/*.h
        src/qt/test/*.cpp
        src/qt/test/*.h
        src/qt/*.cpp
        src/qt/*.h
        src/script/*.cpp
        src/script/*.h
        src/secp256k1/include/*.h
        src/test/*.cpp
        src/test/*.h
        src/univalue/include/*.h
        src/univalue/lib/*.cpp
        src/univalue/lib/*.h
        src/wallet/test/*.cpp
        src/wallet/*.cpp
        src/wallet/*.h
        src/zmq/*.cpp
        src/zmq/*.h
        src/*.cpp
        src/*.h
        src/evo/*.h
        src/evo/*.cpp
        src/rpc/*.cpp
        src/rpc/*.h
        )

#add_executable(gozer ${SOURCE_FILES})
