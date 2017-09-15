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

#include "MP4MetaFile.h"

using namespace mp4v2;
using namespace mp4v2::impl;

//MyMP4Track is a kluge to allow us to call protected member function
// MP4Track::GetSampleFileOffset().
class MyMP4Track : public MP4Track
{
private:
	MyMP4Track(MP4File* pFile, MP4Atom* pTrakAtom)
	: MP4Track(pFile, pTrakAtom){} //prevent compiler warning

public:
    uint64_t GetSampleFileOffset(MP4SampleId sampleId)
    {
        return MP4Track::GetSampleFileOffset(sampleId);
    }
};

void MP4MetaFile::ModifySampleByte(MP4TrackId trackId, MP4SampleId sampleId, uint8_t byte,
                                   uint32_t byteOffset, uint8_t bitOffset)
{
    ProtectWriteOperation("MP4MetaFile::ModifySampleByte");

    uint64_t sampleOffset = static_cast<MyMP4Track *>(m_pTracks[FindTrackIndex(trackId)])->
            GetSampleFileOffset(sampleId);
    uint64_t origPosition = GetPosition();

    SetPosition(sampleOffset + byteOffset);

    if (bitOffset)
    {
        //the 8 bits span 2 bytes
        uint8_t buf[2];
        PeekBytes(buf, 2);
        buf[0] &= (0xff << bitOffset);
        buf[0] |= (byte >> (8 - bitOffset));
        buf[1] &= (0xff >> (8 - bitOffset));
        buf[1] |= (byte << bitOffset);
        WriteBytes(buf, 2);
    } else {
        //the 8 bits is byte-aligned
        WriteBytes(&byte, 1);
    }

    SetPosition(origPosition);
}
