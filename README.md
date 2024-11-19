# IcarusFDMNES
Utilities for using FDMNES on the Icarus HPC cluster

Download all files to a directory on Icarus, and ensure you have downloaded the .tar.gz FDMNES parallel file to the same directory from https://fdmnes.neel.cnrs.fr/download/

Run
./miniconda_env_script.sh
in that directory, which will set up miniconda (if not set up already) and the specific environment supporting FDMNES. It will unpack FDMNES and add that directory to the PATH env var in your .bashrc file
