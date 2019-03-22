#!/usr/bin/env python3
#-*- coding: UTF 8 -*-

import datetime 
from rss import *


db_path = './base.db'

p=base_check
p(db_path)
while True:
    our_bot = ExportBot ()
    our_bot.detect()
    our_bot.public_posts()
    time.sleep(60)
