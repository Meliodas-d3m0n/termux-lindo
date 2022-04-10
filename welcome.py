import os,sys,time,random
print("")
print("")
cores = ["\033[1;31m","\033[1;32m"]
SEXOOO = random.choice(cores)+"Bem Vindo YOURNAME\n"
for msg in SEXOOO:
    sys.stdout.write(msg)
    sys.stdout.flush()
    time.sleep(0.06)
print("")
