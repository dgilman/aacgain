#!/usr/bin/env python

import subprocess
import sys
import os.path
import re

# Gain intentionally lowered by 4dB, resulting in a ~5dB positive ReplayGain adjustment

MATCHER = re.compile('Recommended "Album" dB change for all files: ([0-9.]+)')

def main():
    if len(sys.argv) < 2:
        raise Exception("Give path to aacgain binary on command line")
    binary = sys.argv[1]

    dir_path = os.path.dirname(os.path.realpath(__file__))
    mp3_path = os.path.join(dir_path, 'rickroll_crop.mp3')
    m4a_path = os.path.join(dir_path, 'rickroll_crop.m4a')

    mp3_popen = subprocess.Popen([binary, mp3_path], stdout=subprocess.PIPE)
    stdout, _ = mp3_popen.communicate()
    stdout = stdout.decode(sys.getdefaultencoding())
    match = MATCHER.search(stdout)
    if not match:
        print(stdout)
        raise Exception("mp3 test failed")
    db_change = match.groups(1)[0]
    if db_change != "5.580000":
        raise Exception("mp3 test returned invalid dB change: {0}".format(db_change))

    mp3_popen = subprocess.Popen([binary, m4a_path], stdout=subprocess.PIPE)
    stdout, _ = mp3_popen.communicate()
    stdout = stdout.decode(sys.getdefaultencoding())
    match = MATCHER.search(stdout)
    if not match:
        print(stdout)
        raise Exception("m4a test failed")
    db_change = match.groups(1)[0]
    if db_change != "5.390000":
        raise Exception("m4a test returned invalid dB change: {0}".format(db_change))


if __name__ == "__main__":
    main()
