This folder contains tools that we use to regenerate the latex samples.

It is not useful to authors that wish to submit to Melba.

# Usage
Simply type `make` and it should regenerate the three samples, if needed. It works by patching automatically `melba-sample.tex` with each sample specific changes, compile it, and then copy it to the top folder. Therefore, the parent folder remains clean and clear for the authors to read.
