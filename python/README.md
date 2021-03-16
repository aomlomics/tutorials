# Python Tutorial

This tutorial is broken into three sections:

* Getting Started (this page) – Installing Miniconda and Working with Conda
* [Part 1 – Python Basics](https://github.com/aomlomics/tutorials/blob/master/python/python_pt1.ipynb)
* [Part 2 – Numpy, Pandas, and Matplotlib](https://github.com/aomlomics/tutorials/blob/master/python/python_pt2.ipynb)

This tutorial will give you everything you need to import data into Python, analyze it, and make some striking graphs.

After completing this tutorial, if you want to learn more and take a full course on Python, check out [Python for Data Analysis](https://github.com/cuttlefishh/python-for-data-analysis), an online course developed by Luke Thompson.

## Getting Started – Installing Miniconda and Working with Conda

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

Now you're ready to move on to [Part 1 – Python Basics](https://github.com/aomlomics/tutorials/blob/master/python/python_pt1.ipynb).

