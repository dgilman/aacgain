# Microsoft Developer Studio Project File - Name="mp3gain" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=mp3gain - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mp3gain.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mp3gain.mak" CFG="mp3gain - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mp3gain - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "mp3gain - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/analysis", SCAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MLd /I "..\aacgain" /Zi /W3 /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "HAVE_MEMCPY" /D "NOANALYSIS" /D "AACGAIN" /D "_MBCS" /YX /Fp".\Debug/mp3gain.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MLd /I "..\aacgain" /Zi /W3 /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "HAVE_MEMCPY" /D "NOANALYSIS" /D "AACGAIN" /D "_MBCS" /YX /Fp".\Debug/mp3gain.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /tlb".\Debug\mp3gain.tlb" /win32 
# ADD MTL /nologo /tlb".\Debug\mp3gain.tlb" /win32 
# ADD BASE RSC /l 1033 /d "_DEBUG" 
# ADD RSC /l 1033 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib setargv.obj Ws2_32.lib /nologo /out:".\Debug\aacgain.exe" /incremental:no /debug /pdb:".\Debug\mp3gain.pdb" /pdbtype:sept /map:".\Debug\mp3gain.map" /subsystem:console 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib setargv.obj Ws2_32.lib /nologo /out:".\Debug\aacgain.exe" /incremental:no /debug /pdb:".\Debug\mp3gain.pdb" /pdbtype:sept /map:".\Debug\mp3gain.map" /subsystem:console 

!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /ML /I "..\aacgain" /Zi /W4 /O2 /Ob2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "HAVE_MEMCPY" /D "NOANALYSIS" /D "HAVE_STRCHR" /D "AACGAIN" /D "_MBCS" /GF /Gy /YX /Fp".\Release/mp3gain.pch" /Fo".\Release/" /Fd".\Release/" /U "asWIN32DLL" /c /GX 
# ADD CPP /nologo /ML /I "..\aacgain" /Zi /W4 /O2 /Ob2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "HAVE_MEMCPY" /D "NOANALYSIS" /D "HAVE_STRCHR" /D "AACGAIN" /D "_MBCS" /GF /Gy /YX /Fp".\Release/mp3gain.pch" /Fo".\Release/" /Fd".\Release/" /U "asWIN32DLL" /c /GX 
# ADD BASE MTL /nologo /tlb".\Release\mp3gain.tlb" /win32 
# ADD MTL /nologo /tlb".\Release\mp3gain.tlb" /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" 
# ADD RSC /l 1033 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib setargv.obj Ws2_32.lib /nologo /out:".\Release\aacgain.exe" /incremental:no /debug /pdb:".\Release\mp3gain.pdb" /pdbtype:sept /map:".\Release\mp3gain.map" /subsystem:console /opt:ref 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib setargv.obj Ws2_32.lib /nologo /out:".\Release\aacgain.exe" /incremental:no /debug /pdb:".\Release\mp3gain.pdb" /pdbtype:sept /map:".\Release\mp3gain.map" /subsystem:console /opt:ref 

!ENDIF

# Begin Target

# Name "mp3gain - Win32 Debug"
# Name "mp3gain - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter ".c"
# Begin Source File

SOURCE=..\mp3gain\apetag.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\common.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\dct64_i386.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\decode_i386.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\gain_analysis.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\interface.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\layer3.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mp3gain.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\rg_error.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\tabinit.c

!IF  "$(CFG)" == "mp3gain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "mp3gain - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ".h"
# Begin Source File

SOURCE=..\mp3gain\apetag.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\bitstream.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\common.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\config.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\dct64_i386.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\decode_i386.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\encoder.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\gain_analysis.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\huffman.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\interface.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\lame.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\layer3.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\machine.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mp3gain.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\mpg123.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\mpglib.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\resource.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\rg_error.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\tabinit.h
# End Source File
# Begin Source File

SOURCE=..\mp3gain\mpglibDBL\VbrTag.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter ".rc"
# Begin Source File

SOURCE=.\aacgain.rc
# End Source File
# End Group
# End Target
# End Project

