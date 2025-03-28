import os
import re

directory = "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/stanford-router/router-rtl-files/src/clib"
pattern = re.compile(r'\s*`include\s+"parameters\.v"\s*\n')

for filename in os.listdir(directory):
    if filename.endswith(".v"):
        file_path = os.path.join(directory, filename)
        with open(file_path, "r") as file:
            lines = file.readlines()
        
        with open(file_path, "w") as file:
            for line in lines:
                if not pattern.match(line):
                    file.write(line)

print("`include \"parameters.v\" removed from all .v files in", directory)
