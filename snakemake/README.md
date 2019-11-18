## Snakemake Tutorial

### Introductory Slideshow

Snakemake In Short: https://slides.com/johanneskoester/snakemake-short#/

### Installation

Follow the instructions at https://github.com/cuttlefishh/tourmaline#installation.

### Examples

The examples below contain the required files in the corresponding directories (`example1`, `example2`, etc.) of this repository.

#### Example 1

This example uses a target rule "main" at the top and a normal rule "mytask". We learn about **command variations**, **target files**, and **target rules**.

##### Snakefile

```
rule main:
    input:
        "out.txt"

rule mytask:
    output:
        "out.txt"
    shell:
        "echo 'Some text' > {output}"
```

Let's say we want to create an output file `out.txt` that contains some text from an echo command. Each of the four Snakemake commands below will generate the same output file `out.txt`:

* `snakemake out.txt` – specify the desired file as the target
* `snakemake mytask` – specify the rule that creates the desired file as the target
* `snakemake main` – specify the default target rule as the target
* `snakemake` – let the default target rule be the target

Snakemake considers the first rule of the workflow the default target. Therefore, we can create a rule at the top that takes as input all the files we want to be output by the workflow.

#### Example 2

This example introduces the use of an **input file** and **parameters**. We'll also learn about options for dry run and directed acyclic graph (DAG).

##### Snakefile

```
rule main:
    input:
        "out.txt"

rule sleep:
    params:
        lines=2
    input:
        "in.txt"
    output:
        "out.txt"
    shell:
        "head -n {params.lines} {input} > {output}"
```

The input file `in.txt` contains 5 lines of text. Let's say we want to print the first 2 lines of that file to `out.txt`. Any of the variant Snakemake commands we used above will work, but let's just specify the top target rule as our target:

* `snakemake main`

If we wanted to see what rules would be run without running them, we could do a **dry run**:

* `snakemake --dryrun main`

To see the graphical representation of the rules, inputs, and outputs, we can create a [directed acyclic graph (DAG)](https://en.wikipedia.org/wiki/Directed_acyclic_graph). To generate the **DAG**, we use the `dot` command that comes with Snakemake to create and SVG file:

* `snakemake --dag main | dot -Tsvg > dag.svg`

#### Example 3

This example uses **wildcards** with **input and output directories**.

##### Snakefile

```
rule all:
    input:
        "counts/test_519_R1.txt",
        "counts/test_520_R1.txt",
        "counts/test_521_R1.txt"

rule gunzip_fastqgz:
    input:
        "fastqgz/{sample}.fastq.gz"
    output:
        "fastq/{sample}.fastq"
    shell:
        "gunzip -c {input} > {output}"
        
rule count_fastq_seqs:
    input:
        "fastq/{sample}.fastq"
    output:
        "counts/{sample}.txt"
    shell:
        "expr $(cat {input} | wc -l) / 4 > {output}"
```

To generate the fastq and sequence count for a single sample, we can specify the counts as the target, which will require both steps to be done:

* `snakemake counts/test_519_R1.txt`

Or, since we have all the samples listed in the first rule `all`, we can just run all samples at once with one of the following (identical output):

* `snakemake all`
* `snakemake`

#### Example 4

This example uses a **config file**, **multiple input files**, and **embedded Python code**.

##### config.yaml

```
# input files
file_1: input/file1.csv
file_2: input/file2.csv

# parameters
header: 0

# output files
out_merged: output/merged.csv
out_described: output/described.txt
```

The config file is written in YAML. YAML is a plain text file format that stands for "yet another markup language".

##### Snakefile

```
import pandas as pd

configfile: "config.yaml"

rule merge_describe:
    input:
        config["file_1"],
        config["file_2"]
    params:
        config["header"]
    output:
        config["out_merged"],
        config["out_described"]
    run:
        df1 = pd.read_csv(input[0], header=params[0])
        df2 = pd.read_csv(input[1], header=params[0])
        df_merged = pd.concat([df1, df2])
        described = df_merged.describe()
        df_merged.to_csv(output[0], sep=',')
        described.to_csv(output[1], sep=',')
```

At the top of the Snakefile, we import any Python packages we will use, and define the config file. 

When we use embedded Python code, we use `run:` instead of `shell:`, and standard Python list indexing is used for parameters instead of curly braces (e.g., `input[0]` instead of `{input.file1}`).

Now we can run the workflow using one of the following commands (identical output):

* `snakemake merge_describe`
* `snakemake`

