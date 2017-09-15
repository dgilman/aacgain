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

#ifndef __AACGAINI_H__
#define __AACGAINI_H__

//internal interface for aacgain.c

typedef double decode_t;

typedef struct GainFixup
{
    struct GainFixup *next;
    unsigned long sampleId;
    unsigned long sample_offset;
    unsigned char bit_offset;
    unsigned char channel; //0=>left or mono, 1=>right
    unsigned char orig_gain;
} GainFixup, *GainFixupPtr;

typedef struct GainData
{
    char *mp4file_name;
    char *temp_name;
	void *mp4File;
	void *itmfList;
    void *hDecoder;
    void* preserve_timestamp;
    int track;
    unsigned long samplerate;
    unsigned char channels;
    int gain_read, abort;
    int analyze, use_temp, open_for_write;
    unsigned long sampleId;
    GainFixupPtr GainHead, GainTail;
    decode_t peak;
    unsigned char min_gain, max_gain;
} GainData, *GainDataPtr;

#ifdef __cplusplus
extern "C" 
{
#endif

extern GainDataPtr theGainData;

void* NEAACDECAPI aacgainDecode(void *hDecoder,
                                void *hInfo,
                                unsigned char *buffer,
                                unsigned long buffer_size);
#ifdef __cplusplus
}
#endif

#endif
