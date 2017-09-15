/*
** aacgain - modifications to mp3gain to support mp4/m4a files
** Copyright (C) David Lasker, 2004-2010 Altos Design, Inc.
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
**/

//MP4MetaFile extends mp4v2 class MP4File to allow
//modification of any 8 bits of a sample

#ifndef __MP4_META_FILE_H__
#define __MP4_META_FILE_H__

#include "src/impl.h" //in mp4v2

class MP4MetaFile : public mp4v2::impl::MP4File
{
public:
    void ModifySampleByte(MP4TrackId trackId, MP4SampleId sampleId, uint8_t byte,
                          uint32_t byteOffset, uint8_t bitOffset);
};

#endif //__MP4_META_FILE_H__