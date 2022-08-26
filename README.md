# Index data

Indexes all data in a particular directory assuming meta-data and descriptions are listed in a human readable readme file (with any possible capitalization). In addition, the size of the topmost directory as well as first level directories is reported.

## Use

To be run in the top most directory to be indexed as:

```bash
bash index_euler_sh
```

or after running `chmod +x index_euler.sh` plainly as:

```bash
./index_euler_sh
```

## Returns

Returns data in a file called `data_summary.txt` in this directory.

The summary data is formatted as such, using visual breaks:

```
######################################
Content of data_1/
######################################

4.0K	data_1/more_files
12K	data_1/

--------------------------------------
File: data_1/README.md
--------------------------------------

data 1 instructions

some more instructions

######################################
```

The script can be tested on this repository as some test structures / data are included, as well as the matching `data_summary.txt` file
