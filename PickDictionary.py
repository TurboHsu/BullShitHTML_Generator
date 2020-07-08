#!/usr/bin/python
# -*- coding: UTF-8 -*-

import os, re
import random,readJSON
import linecache
count = len(open('dictionary.txt','r',encoding='UTF-8').readlines())
hellonum=random.randrange(1,count, 1)
xx = linecache.getline('dictionary.txt',hellonum)
xx = xx.rstrip()
print(xx)