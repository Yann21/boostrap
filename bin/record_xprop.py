#!/usr/bin/env python3
import subprocess
import time

outfile = "res.txt"
data = []; t = 0
while t < 5:
    data.append(subprocess.check_output(["/bin/bash", "-c", "wmctrl -l"]).decode("utf-8"))
    time.sleep(2)
    t = t + 1
with open(outfile, "wt") as out:
    for rec in data:
        out.write(rec+"\n"+"-"*20+"\n\n")
