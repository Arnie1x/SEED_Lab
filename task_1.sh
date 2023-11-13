#!/bin/env python3

import random
s = "abcdefghijklmonpqrstuvwxyz"
list = random.sample(s, len(s))
key = ''.join(list)
print(key)