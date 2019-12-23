add_executable(aacgain
               aacgain.cpp decoder.c syntax.c MP4MetaFile.cpp)

target_include_directories(aacgain PRIVATE
# Is there a better way to do this than PROJECT_SOURCE_DIR
                           "${CMAKE_CURRENT_SOURCE_DIR}"
                           "${PROJECT_SOURCE_DIR}/mp3gain"
                           "${PROJECT_SOURCE_DIR}/aacgain"
			   "${PROJECT_BINARY_DIR}/3rdparty/include"
                           "${PROJECT_SOURCE_DIR}/3rdparty/mp4v2"
                           "${PROJECT_SOURCE_DIR}/3rdparty/faad2/libfaad"
# These two exist on UNIX but paths are needed on Windows
# as we have no install targets for Windows
                           "${PROJECT_SOURCE_DIR}/3rdparty/mp4v2/src"
                           "${PROJECT_SOURCE_DIR}/3rdparty/mp4v2/include"
                           "${PROJECT_SOURCE_DIR}/3rdparty/faad2/include"
			   "${PROJECT_BINARY_DIR}/aacgain"
                          )
target_link_libraries(aacgain PRIVATE
                      mp3gain
                      mpglib
                      faad2
                      mp4v2
                     )
add_dependencies(aacgain faad2_proj mp4v2_proj)
IF(UNIX)
target_compile_options(aacgain PRIVATE -Wall -Wextra)
ENDIF(UNIX)
install(TARGETS aacgain DESTINATION bin)
