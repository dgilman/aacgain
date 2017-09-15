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

#ifndef __AACGAIN_H__
#define __AACGAIN_H__

//external interface to aacgain.c

#define AACGAIN_VERSION "1.9.0"

#include "gain_analysis.h"

#define rg_t Float_t

typedef void *AACGainHandle;

typedef enum {
    replaygain_track_gain,
    replaygain_album_gain,
    replaygain_track_peak,
    replaygain_album_peak,
    replaygain_track_minmax,
    replaygain_album_minmax,
    replaygain_undo,
    num_rg_tags
}rg_tag_e;

typedef unsigned long (ProgressCallback)(unsigned long percent, unsigned long bytes);

#ifdef __cplusplus
extern "C" 
{
#endif

int aac_open(char *mp4_file_name, int use_temp, int preserve_timestamp, AACGainHandle *gh);
unsigned int aac_get_sample_rate(AACGainHandle gh);
int aac_compute_gain(AACGainHandle gh, rg_t *peak, unsigned char *min_gain, 
                     unsigned char *max_gain, ProgressCallback reportProgress);
int aac_compute_peak(AACGainHandle gh, rg_t *peak, unsigned char *min_gain,
                     unsigned char *max_gain, ProgressCallback reportProgress);
int aac_modify_gain(AACGainHandle gh, int left, int right,
                    ProgressCallback reportProgress);
int aac_set_tag_float(AACGainHandle gh, rg_tag_e tag, rg_t value);
int aac_get_tag_float(AACGainHandle gh, rg_tag_e tag, rg_t *value);
int aac_set_tag_int_2(AACGainHandle gh, rg_tag_e tag, int p1, int p2);
int aac_get_tag_int_2(AACGainHandle gh, rg_tag_e tag, int *p1, int *p2);
int aac_clear_rg_tags(AACGainHandle gh);
int aac_close(AACGainHandle gh);

#ifdef __cplusplus
}
#endif

#endif