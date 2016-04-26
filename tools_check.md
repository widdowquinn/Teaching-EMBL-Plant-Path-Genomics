# EMBL course software/tools check

## Anaconda3-4.0.0

* [https://www.continuum.io/downloads](https://www.continuum.io/downloads)
* Installed on OSX via Graphical package, should give same results on Linux from command-line install.
* Why Anaconda?
  * Single installation of language, plus tools and scientific Python libraries
  * Sandboxed off from system Python
  * Provides libraries that will be used in teaching that should all work together well without version issues!

### WARNING: Anaconda breaks `${PATH}` for system Python

The Anaconda install modifies `~/.bash_profile`, changing `${PATH}`:

```
# added by Anaconda3 4.0.0 installer
export PATH="/Users/lpritc/anaconda/bin:$PATH"
```

This takes priority over system Python, which is probably not what you want. Changing this to:

```
# added by Anaconda3 4.0.0 installer, modified by LP
export PATH="$PATH:/Users/lpritc/anaconda/bin"
```

still allows use of the Anaconda installation, using virtualenvs, as follows:

```
$ conda create -n test python=3 numpy
Using Anaconda Cloud api site https://api.anaconda.org
Fetching package metadata: ....
Solving package specifications: .........
Package plan for installation in environment /Users/lpritc/anaconda/envs/test:
The following packages will be downloaded:
    package                    |            build
    ---------------------------|-----------------
    numpy-1.11.0               |           py35_0         2.7 MB
    setuptools-20.7.0          |           py35_0         458 KB
    ------------------------------------------------------------
                                           Total:         3.2 MB
The following NEW packages will be INSTALLED:
    mkl:        11.3.1-0     
    numpy:      1.11.0-py35_0
    openssl:    1.0.2g-0     
    pip:        8.1.1-py35_1 
    python:     3.5.1-0      
    readline:   6.2-2        
    setuptools: 20.7.0-py35_0
    sqlite:     3.9.2-0      
    tk:         8.5.18-0     
    wheel:      0.29.0-py35_0
    xz:         5.0.5-1      
    zlib:       1.2.8-0      
Proceed ([y]/n)? y
Fetching packages ...
numpy-1.11.0-p 100% |################################| Time: 0:00:01   2.30 MB/s
setuptools-20. 100% |################################| Time: 0:00:00 755.20 kB/s
Extracting packages ...
[      COMPLETE      ]|###################################################| 100%
Linking packages ...
[      COMPLETE      ]|###################################################| 100%
#
# To activate this environment, use:
# $ source activate test
#
# To deactivate this environment, use:
# $ source deactivate
#
$ source activate test
discarding /Users/lpritc/anaconda/bin from PATH
prepending /Users/lpritc/anaconda/envs/test/bin to PATH
$ which python
/Users/lpritc/anaconda/envs/test/bin/python
$ source deactivate
discarding /Users/lpritc/anaconda/envs/test/bin from PATH
```

However, this leaves the Anaconda Python as the first one visible in `${PATH}`:

```
lpritc@Totoro:~$ which python
/usr/local/bin/python
lpritc@Totoro:~$ echo $PATH
/Users/lpritc/.rbenv/shims:[…]
lpritc@Totoro:~$ source activate test
discarding /Users/lpritc/anaconda/bin from PATH
prepending /Users/lpritc/anaconda/envs/test/bin to PATH
(test)lpritc@Totoro:~$ source deactivate
discarding /Users/lpritc/anaconda/envs/test/bin from PATH
lpritc@Totoro:~$ which python
/Users/lpritc/anaconda/bin/python
lpritc@Totoro:~$ echo $PATH
/Users/lpritc/anaconda/bin:/
lpritc@Totoro:~$ echo $PATH
/Users/lpritc/anaconda/bin:/Users/lpritc/.rbenv/shims:[…]
```

For temporary teaching accounts, it is probably OK to have Anaconda's Python be the only one they see. It's more of a pain for me, doing the course development ;)

### Making Anaconda up to date

The latest versions of all packages can be installed with:

```
$ conda update --all
Using Anaconda Cloud api site https://api.anaconda.org
Fetching package metadata: ....
Solving package specifications: .........
Package plan for installation in environment /Users/lpritc/anaconda:
The following packages will be downloaded:
    package                    |            build
    ---------------------------|-----------------
    hdf5-1.8.16                |                0         1.7 MB
    anaconda-custom            |           py35_0           3 KB
    backports-1.0              |           py35_0           1 KB
    cloudpickle-0.2.1          |           py35_0          17 KB
[…]
```

### Virtual environment for the course

The course examples will be run in a virtual environment using Anaconda Python. This can be instantiated with:

```
conda create -n pathogen_genomics python=3 biopython
```

which will create a new virtual environment with the following essential packages:

* biopython