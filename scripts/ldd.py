#!/usr/bin/env python
# -*- coding: utf-8 -*- 

#python-chroot-builder
#Copyright (C) 2012 Ji-hoon Kim
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.

import subprocess
import sys
import re

def ldd(filename):
	libs = {}
	for x in filename:
		p = subprocess.Popen(["ldd", x], 
			stdout=subprocess.PIPE,
			stderr=subprocess.PIPE)

		result = p.stdout.readlines()

		for x in result:
			line = x.decode("utf-8")
			match = re.match(r'\t(.*).so.* => (.*) \(0x', line)
			if match:
				libs[match.group(1)] = match.group(2)

	return libs
	
if __name__ == "__main__":
	if len(sys.argv) <= 1:
		print("usage: %s filename1 filename2 ..."%(sys.argv[0]))
	else:
		print("\n".join(ldd(sys.argv[1:])))