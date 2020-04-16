# QIIME 2 Tutorial

## Introduction

Slideshow on QIIME 2 philosophy and theory: slides on [Google Drive](https://drive.google.com/drive/folders/1cYUCk4LI_A-0Rx2K8yCm6SxKG7rDNU-D?usp=sharing).

Documentation from [qiime2.org](https://qiime2.org):

* [Overview of QIIME 2 Plugin Workflows](https://docs.qiime2.org/2020.2/tutorials/overview/)
* [QIIME 2 for Experienced Microbiome Researchers](https://docs.qiime2.org/2020.2/tutorials/qiime2-for-experienced-microbiome-researchers/)

## Installation

First, if you don't have Conda installed on your machine, install [Miniconda](https://conda.io/miniconda.html) for your operating system (Python 3.7+ version).

Second, install QIIME 2 in a Conda environment, if you haven't already. See the instructions at [qiime2.org](https://docs.qiime2.org/2019.7/install/native/). For example, on macOS these commands will install QIIME 2 inside a Conda environment called `qiime2-2020.2` (for Linux, change "osx" to "linux"):

```bash
wget https://data.qiime2.org/distro/core/qiime2-2020.2-py36-osx-conda.yml
conda env create -n qiime2-2020.2 --file qiime2-2020.2-py36-osx-conda.yml
```

## Data

### Directory setup

Use the commands below to create a directory structure in a convenient place for you (e.g., your home directory):

```bash
mkdir ~/qiime2-tutorial
mkdir ~/qiime2-tutorial/rees-medsea
mkdir ~/qiime2-tutorial/rees-medsea/metadata
mkdir ~/qiime2-tutorial/rees-medsea/imported
mkdir ~/qiime2-tutorial/rees-medsea/denoised
mkdir ~/qiime2-tutorial/database
```

*Note: The next commands you physically need to run for this tutorial are in the section "Shortcut: Download the data from GitHub".*

### Download EMP-format sequences from Qiita

*Note: These steps have been done for you. They are here for reference, in case you want to work with EMP-format data from [Qiita](https://qiita.ucsd.edu) or another source.*

Create additional directories for the multiplexed ("mux", i.e., EMP-format) and demultiplexed ("demux") sequence files:

```
mkdir ~/qiime2-tutorial/rees-medsea/sequences
mkdir ~/qiime2-tutorial/rees-medsea/sequences/mux
mkdir ~/qiime2-tutorial/rees-medsea/sequences/demux
```

Download the raw forward sequences and raw barcodes sequences for the study "Rees Vulcano Island MedSea" from https://qiita.ucsd.edu/study/description/889:

* 2171_s_G1_L001_R1_concat.fastq.gz
* 2171_s_G1_L001_R1_concat_barcodes.fastq.gz

Move/rename them:

```bash
mv 2171_s_G1_L001_R1_concat.fastq.gz ~/qiime2-tutorial/rees-medsea/sequences/mux/emp-single/sequences.fastq.gz
mv 2171_s_G1_L001_R1_concat_barcodes.fastq.gz ~/qiime2-tutorial/rees-medsea/sequences/mux/emp-single/barcodes.fastq.gz
```

### Demultiplex EMP-format sequences with QIIME 2

*Note: These steps have been done for you. They are here for reference.*

First we activate our conda environment and change to the directory containing the data:

```bash
conda activate qiime2-2020.2
cd ~/qiime2-tutorial/rees-medsea
```

To import the sequence data, because they are in EMP single-end format (read 1 only, not demultiplexed, and with a separate sequence file containing the barcodes/indexes), we use `qiime tools import` with type `EMPSingleEndSequences`:

```bash
qiime tools import \
--type EMPSingleEndSequences \
--input-path sequences/mux/emp-single \
--output-path sequences/mux/emp_single_end_sequences.qza
```

To demultiplex the sequences, run `qiime demux emp-single`:

```bash
qiime demux emp-single \
--m-barcodes-file metadata/889_prep_93_qiime_20180418-110630.txt \
--m-barcodes-column BarcodeSequence \
--i-seqs sequences/mux/emp_single_end_sequences.qza \
--p-rev-comp-mapping-barcodes \
--o-output-dir sequences/demux
```

Unzip the output `emp_single_end_sequences.qza`. In the folder that's generated, the files you need will be in `data`. Move the sequenes files `*.fastq.gz` to `sequences/demux`. 

Move/rename the file `MANIFEST`  to `metadata/manifest.csv` and edit so it looks like this (make sure the absolute filepaths match what's on your machine):

```
sample-id,absolute-filepath,direction
889.25May.1,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.25May.1_1_L001_R1_001.fastq.gz,forward
889.25May.3,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.25May.3_2_L001_R1_001.fastq.gz,forward
889.26May.2,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.26May.2_3_L001_R1_001.fastq.gz,forward
889.25May.2,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.25May.2_4_L001_R1_001.fastq.gz,forward
889.26May.3,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.26May.3_5_L001_R1_001.fastq.gz,forward
889.25May.4,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.25May.4_6_L001_R1_001.fastq.gz,forward
889.26May.4,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.26May.4_7_L001_R1_001.fastq.gz,forward
889.26May.1,$HOME/qiime2-tutorial/rees-medsea/sequences/demux/889.26May.1_8_L001_R1_001.fastq.gz,forward
```

### Import fastq sequences into a QIIME 2 artifact

We now have a demultiplexed fastq.gz files and a manifest file that links those fastq.gz files to sample names (which in turn match the sample names in the metatdata file). Whether you started with multiplexed sequences files (e.g., EMP format) or received demultiplexed files from your sequencing center, this is a common starting point.

Import the sequences into a QIIME 2 sequence artifact:

```bash
qiime tools import \
--type 'SampleData[SequencesWithQuality]' \
--input-path metadata/manifest.csv \
--output-path imported/fastq.qza \
--input-format SingleEndFastqManifestPhred33
```

### Shortcut: Download the data from GitHub

*Note: Start here to get the QIIME 2-ready sequence artifact and metadata.*

The data for this tutorial, which we prepared above, is available directly from the GitHub repository. To download it, we use `wget` to get just the files we need, in this case the sequence artifact and the metadata:

```bash
wget https://raw.githubusercontent.com/cuttlefishh/tutorials/master/qiime2/rees-medsea/imported/fastq.qza
mv fastq.qza imported/fastq.qza

wget https://raw.githubusercontent.com/cuttlefishh/tutorials/master/qiime2/rees-medsea/metadata/metadata.tsv
mv metadata.tsv metadata/metadata.tsv
```

## Denoise

Now we are ready to start analyzing the data!

### Run DADA2

Here we will run DADA2 in single-end mode:

```bash
qiime dada2 denoise-single \
--i-demultiplexed-seqs imported/fastq.qza \
--p-trunc-len 0 \
--p-trim-left 0 \
--p-max-ee 2 \
--p-trunc-q 2 \
--p-chimera-method consensus \
--p-min-fold-parent-over-abundance 1 \
--p-n-threads 8 \
--p-n-reads-learn 1000000 \
--p-hashed-feature-ids \
--o-table denoised/table.qza \
--o-representative-sequences denoised/representative_sequences.qza \
--o-denoising-stats denoised/stats.qza \
--verbose
```

### Visualize representative sequence statistics

```bash
qiime feature-table tabulate-seqs \
--i-data denoised/representative_sequences.qza \
--o-visualization denoised/representative_sequences.qzv
```

This is our first visualization file, with extension ".qzv". Previously all of our QIIME 2 files have been artifacts, with extension ".qza", but the file format is just a zip file. We can actually unzip the files and view the contents.

View the visualization by opening up a Chrome browser, going to https://view.qiime2.org, and dragging the ".qzv" file into the browser window.

### Visualize feature table statistics

```
qiime feature-table summarize \
--i-table denoised/table.qza \
--m-sample-metadata-file metadata/metadata.tsv \
--o-visualization denoised/table.qzv
```

Again, view the visualization by opening up a Chrome browser, going to https://view.qiime2.org, and dragging the ".qzv" file into the browser window.

Based on the feature table summary, let's set our rarefaction level to 8700 sequences per sample, so that all samples will be included.

### Create symbolic links to reference sequences and taxonomy

Before this will work, you will need to have the [QIIME 2-formatted SILVA database](https://www.arb-silva.de/download/archive/qiime/) on your machine:

```
cd $HOME/qiime2-tutorial/database
ln -s $HOME/databases/qiime2/16s/silva_132_99_16S_sequences.qza refseqs.qza
ln -s $HOME/databases/qiime2/16s/silva_132_99_16S_taxonomy_7_levels.qza reftax.qza
```

### Taxonomically classify representative sequences

We will use a consensus BLAST approach:

```
cd ../rees-medsea

qiime feature-classifier classify-consensus-blast \
--i-query denoised/representative_sequences.qza \
--i-reference-reads ../database/refseqs.qza \
--i-reference-taxonomy ../database/reftax.qza \
--o-classification denoised/taxonomy.qza
```

### Visualize taxonomy of representative sequences

```
qiime metadata tabulate \
--m-input-file denoised/taxonomy.qza \
--o-visualization denoised/taxonomy.qzv
```

### Visualize taxonomic composition of feature table

```
qiime taxa barplot \
--i-table denoised/table.qza \
--i-taxonomy denoised/taxonomy.qza \
--m-metadata-file metadata/metadata.tsv \
--o-visualization denoised/taxa_barplot.qzv
```

### Build phylogenetic tree of representative sequences

```
qiime alignment mafft \
--i-sequences denoised/representative_sequences.qza \
--o-alignment denoised/aligned_representative_sequences.qza

qiime alignment mask \
--i-alignment denoised/aligned_representative_sequences.qza \
--o-masked-alignment denoised/masked_aligned_representative_sequences.qza

qiime phylogeny fasttree \
--i-alignment denoised/masked_aligned_representative_sequences.qza \
--o-tree denoised/unrooted_tree.qza

qiime phylogeny midpoint-root \
--i-tree denoised/unrooted_tree.qza \
--o-rooted-tree denoised/rooted_tree.qza
```

### Run core diversity metrics

Here is where we specify sampling depth (rarefaction) of 8700:

```
qiime diversity core-metrics-phylogenetic \
--i-table denoised/table.qza \
--i-phylogeny denoised/rooted_tree.qza \
--p-sampling-depth 8700 \
--m-metadata-file metadata/metadata.tsv \
--o-rarefied-table denoised/rarefied_table.qza \
--o-faith-pd-vector denoised/faith_pd_vector.qza \
--o-observed-otus-vector denoised/observed_otus_vector.qza \
--o-shannon-vector denoised/shannon_vector.qza \
--o-evenness-vector denoised/evenness_vector.qza \
--o-unweighted-unifrac-distance-matrix denoised/unweighted_unifrac_distance_matrix.qza \
--o-weighted-unifrac-distance-matrix denoised/weighted_unifrac_distance_matrix.qza \
--o-jaccard-distance-matrix denoised/jaccard_distance_matrix.qza \
--o-bray-curtis-distance-matrix denoised/bray_curtis_distance_matrix.qza \
--o-unweighted-unifrac-pcoa-results denoised/unweighted_unifrac_pcoa_results.qza \
--o-weighted-unifrac-pcoa-results denoised/weighted_unifrac_pcoa_results.qza \
--o-jaccard-pcoa-results denoised/jaccard_pcoa_results.qza \
--o-bray-curtis-pcoa-results denoised/bray_curtis_pcoa_results.qza \
--o-unweighted-unifrac-emperor denoised/unweighted_unifrac_emperor.qzv \
--o-weighted-unifrac-emperor denoised/weighted_unifrac_emperor.qzv \
--o-jaccard-emperor denoised/jaccard_emperor.qzv \
--o-bray-curtis-emperor denoised/bray_curtis_emperor.qzv
```

### Run alpha-rarefaction

Here we also specify sampling depth (rarefaction) of 8700:

```
qiime diversity alpha-rarefaction \
--i-table denoised/table.qza \
--i-phylogeny denoised/rooted_tree.qza \
--p-max-depth 8700 \
--p-metrics faith_pd \
--p-metrics shannon \
--p-metrics observed_otus \
--p-metrics chao1 \
--m-metadata-file metadata/metadata.tsv \
--o-visualization denoised/alpha_rarefaction.qzv
```