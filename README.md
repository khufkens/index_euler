# Index Euler data

To be run as:

```bash
bash index_euler_sh
```

or after running `chmod +x index_euler.sh` plainly as:

```bash
./index_euler_sh
```

In the top most directory to be indexed.

Returns data in a file called data_summary.txt in this directory.

The summary data is formatted as such:

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

The script can be tested on this repository as some test structures / data are included.
