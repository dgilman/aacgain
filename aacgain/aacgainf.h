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

#ifndef __AACGAINF_H__
#define __AACGAINF_H__

//Internal interface to modified version of faad2 syntax.c

#define ERR_NO_MEM    1000

void aacgain_raw_data_block(NeAACDecStruct *hDecoder, NeAACDecFrameInfo *hInfo,
                    bitfile *ld, program_config *pce, drc_info *drc);

#endif