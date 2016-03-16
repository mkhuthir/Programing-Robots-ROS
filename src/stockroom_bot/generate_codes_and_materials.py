#! /usr/bin/python

import os

for i in xrange(0,12):
    os.system("rosrun ar_track_alvar createMaker {0}".format(i))
    fn = "MarkerData_{0}.png".format(i)
    os.system("convert {0}" - bordercolor white -border 100x100 {0}".format(fn))
