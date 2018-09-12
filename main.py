#!/usr/bin/env python3
#-*- coding: UTF 8 -*-

from rss import *

while True:
    C = ExportBot ()
    C.detect()
    C.public_posts()
    time.sleep(60)
