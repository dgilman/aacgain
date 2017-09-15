# Microsoft Developer Studio Project File - Name="aacgain" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=aacgain - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "aacgain.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "aacgain.mak" CFG="aacgain - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "aacgain - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "aacgain - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "aacgain - Win32 Debug"

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
# ADD BASE CPP /nologo /MLd /I "..\faad2\include" /I "..\faad2\libfaad" /I "..\mp3gain" /I "..\mpeg4ip\lib\mp4v2" /I "..\mpeg4ip\include" /Zi /W4 /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_UNICODE" /Fp".\Debug/aacgain.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MLd /I "..\faad2\include" /I "..\faad2\libfaad" /I "..\mp3gain" /I "..\mpeg4ip\lib\mp4v2" /I "..\mpeg4ip\include" /Zi /W4 /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_UNICODE" /Fp".\Debug/aacgain.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:".\Debug\aacgain.lib" 
# ADD LIB32 /nologo /out:".\Debug\aacgain.lib" 

!ELSEIF  "$(CFG)" == "aacgain - Win32 Release"

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
# ADD BASE CPP /nologo /ML /I "..\faad2\include" /I "..\faad2\libfaad" /I "..\mp3gain" /I "..\mpeg4ip\lib\mp4v2" /I "..\mpeg4ip\include" /Zi /W3 /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_UNICODE" /Fp".\Release/aacgain.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /ML /I "..\faad2\include" /I "..\faad2\libfaad" /I "..\mp3gain" /I "..\mpeg4ip\lib\mp4v2" /I "..\mpeg4ip\include" /Zi /W3 /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_UNICODE" /Fp".\Release/aacgain.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:".\Release\aacgain.lib" 
# ADD LIB32 /nologo /out:".\Release\aacgain.lib" 

!ENDIF

# Begin Target

# Name "aacgain - Win32 Debug"
# Name "aacgain - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Source File

SOURCE=aacgain.cpp

!IF  "$(CFG)" == "aacgain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "aacgain - Win32 Release"

# ADD CPP /nologo /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=decoder.c

!IF  "$(CFG)" == "aacgain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "aacgain - Win32 Release"

# ADD CPP /nologo /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=MP4MetaFile.cpp

!IF  "$(CFG)" == "aacgain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "aacgain - Win32 Release"

# ADD CPP /nologo /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=syntax.c

!IF  "$(CFG)" == "aacgain - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ELSEIF  "$(CFG)" == "aacgain - Win32 Release"

# ADD CPP /nologo /GX 
!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;inc;xsd"
# Begin Source File

SOURCE=aacgain.h
# End Source File
# Begin Source File

SOURCE=aacgainf.h
# End Source File
# Begin Source File

SOURCE=aacgaini.h
# End Source File
# Begin Source File

SOURCE=MP4MetaFile.h
# End Source File
# Begin Source File

SOURCE=resource.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "rc;ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe;resx"
# End Group
# Begin Source File

SOURCE=Readme
# End Source File
# End Target
# End Project

