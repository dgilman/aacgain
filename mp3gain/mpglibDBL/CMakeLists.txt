add_library(mpglib
           STATIC
           bitstream.h common.c common.h dct64_i386.c
           dct64_i386.h decode_i386.c decode_i386.h encoder.h huffman.h interface.c
           interface.h l2tables.h lame-analysis.h lame.h layer1.c layer1.h layer2.c
           layer2.h layer3.c layer3.h machine.h mpg123.h mpglib.h tabinit.c
           tabinit.h VbrTag.h
           )
IF(UNIX)
target_compile_options(mpglib PRIVATE -Wall -Wextra)
ENDIF(UNIX)
