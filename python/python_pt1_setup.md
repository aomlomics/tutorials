# Python Tutorial

## Part 1 - Conda, IPython, and Python Basics

Here we will install Conda and IPython (a.k.a. Jupyter). Then we will use this IPython notebook to introduce the basic data types and functionality of Python.

For a full course on Python, go here: https://github.com/cuttlefishh/python-for-data-analysis.

### Installing Miniconda and working with Conda

*Conda is an open source package management system and environment management system for installing multiple versions of software packages and their dependencies and switching easily between them. It works on Linux, OS X and Windows, and was created for Python programs but can package and distribute any software.* -- http://conda.pydata.org/docs/

First, install miniconda3: http://conda.pydata.org/miniconda.html. By default, environments you create will use Python 3, but you can specify Python 2 if required.

Then, create a conda environment. Let's make an environment called `python3` for this class that includes Python 3 and Jupyter. 

```
conda create -n python3 python=3 jupyter
```

To activate the environment:

```
source activate python3
```

To deactivate the environment:

```
source deactivate
```

To delete an environment:

```
conda env remove -n myenv
```

After you activate your environment, you can install additional packages to that environment using `conda install`:

```
conda install pandas
```

If the package isn't available from conda, try `pip install`:

```
pip install tabview
```

List the environments on your system:

```
conda env list
```

List the packages in your current environment:

```
conda list
```

### Python and IPython command-line interpreter

(demonstration)

### Working with Jupyter notebooks and Python basics

(demonstration with Python Crash Course)

## Python Crash Course

In this tutorial we will cover some basic aspects of Python using IPython (Jupyter) notebooks. 

1. Syntax
2. Data types
3. Loops and control structures
4. numpy, scipy, math