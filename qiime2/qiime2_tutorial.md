Table of Contents
-----------------

-   [Preamble](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#preamble)
    -   [Resources](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#resources)
-   [Part A: setting up analysis directory & getting
    data](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-a-setting-up-analysis-directory-getting-data)
    -   [Sample
        metadata](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#sample-metadata)
    -   [Raw
        reads](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#raw-reads)
-   [Part B: Sequence quality
    control](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-b-sequence-quality-control)
    -   [Summarize individual
        runs](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#summarize-individual-runs)
    -   [Denoising with
        DADA2](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#denoising-with-dada2)
    -   [Merging denoised
        data](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#merging-denoised-data)
        -   [Feature
            tables](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#feature-tables)
        -   [Representative
            sequences](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#representative-sequences)
    -   [Generating
        summaries](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#generating-summaries)
        -   [Feature
            table](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#feature-table)
        -   [Representative
            sequences](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#representative-sequences-1)
-   [Part C: Sample
    metadata](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-c-sample-metadata)
-   [Part D: Phylogenetic
    reconstruction](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-d-phylogenetic-reconstruction)
    -   [Align
        sequences](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#align-sequences)
    -   [Mask
        sequences](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#mask-sequences)
    -   [Generate
        tree](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#generate-tree)
    -   [Root
        tree](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#root-tree)
    -   [Visualize tree with iTOL (optional,
        time-dependent)](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#visualize-tree-with-itol-optional-time-dependent)
-   [Part E:
    Rarefaction](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-e-rarefaction)
    -   [Interactive rarefaction
        viz](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#interactive-rarefaction-viz)
    -   [Alpha
        rarefaction](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#alpha-rarefaction)
    -   [Pick a rarefaction
        depth](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#pick-a-rarefaction-depth)
    -   [Beta rarefaction (optional,
        time-dependent)](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#beta-rarefaction-optional-time-dependent)
    -   [Core
        metrics](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#core-metrics)
-   [Part F: Getting data in and out of QIIME
    2](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-f-getting-data-in-and-out-of-qiime-2)
    -   [Exporting](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#exporting)
    -   [Importing](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#importing)
-   [Part G: Alpha diversity statistics and
    visualizations](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-g-alpha-diversity-statistics-and-visualizations)
    -   [Alpha group significance
        (richness)](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#alpha-group-significance-richness)
    -   [`q2-longitudinal`](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#q2-longitudinal)
        -   [Filtering to only the treatment group, stool
            samples](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#filtering-to-only-the-treatment-group-stool-samples)
        -   [Compute Shannon Index using filtered
            table](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#compute-shannon-index-using-filtered-table)
        -   [Volatility](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#volatility)
    -   [Alpha correlation (optional,
        time-dependent)](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#alpha-correlation-optional-time-dependent)
-   [Part H: Beta diversity statistics and
    visualizations](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-h-beta-diversity-statistics-and-visualizations)
    -   [Beta group significance (unweighted
        unifrac)](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#beta-group-significance-unweighted-unifrac)
    -   [Emperor PCoA plot
        (Bray-Curtis)](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#emperor-pcoa-plot-bray-curtis)
-   [Part I: Taxonomic classification and
    visualization](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#part-i-taxonomic-classification-and-visualization)
    -   [Pre-trained
        classifier](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#pre-trained-classifier)
    -   [Classify
        features](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#classify-features)
    -   [Summarize](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#summarize)
    -   [Barplots](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/index.html#barplots)


Preamble
========

This tutorial is intended for use at a QIIME 2 workshop, and is designed
to be integrated with our slide deck, as well as our in-person lectures.
If you have stumbled across this page through some other avenue, you
have been warned that this document is not intended to stand on its own
(also, welcome!).

Resources
---------

-   [*Microbiota Transfer Therapy alters gut ecosystem and improves
    gastrointestinal and autism symptoms: an open-label
    study*](https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-016-0225-7)
-   [FMT Tutorial (QIIME 2
    Docs)](https://docs.qiime2.org/2018.2/tutorials/fmt/)

------------------------------------------------------------------------

Part A: setting up analysis directory & getting data
====================================================

Don't worry about understanding the commands in this section - the
ultimate goal is to get our hands on our data (and metadata), and set up
our analysis directory.

Sample metadata
---------------

We will take a closer look at this later.


``` {.sourceCode .bash}
wget -O "sample-metadata.tsv" \
  "https://s3-us-west-2.amazonaws.com/qiime2-data/alt-metadata/fmt-sample-metadata.tsv"
```


-   [sample-metadata.tsv](https://s3-us-west-2.amazonaws.com/qiime2-workshops/fmt/sample-metadata.tsv){.uri}

Raw reads
---------

Two runs of demultiplexed reads have already been imported into QIIME 2
for you. We will cover importing sequence data later in the tutorial.


``` {.sourceCode .bash}
mkdir unfiltered
wget -O "unfiltered/fmt-tutorial-demux-1.qza" \
  "https://data.qiime2.org/2018.2/tutorials/fmt/fmt-tutorial-demux-1-10p.qza"
wget -O "unfiltered/fmt-tutorial-demux-2.qza" \
  "https://data.qiime2.org/2018.2/tutorials/fmt/fmt-tutorial-demux-2-10p.qza"
```


-   [unfiltered/fmt-tutorial-demux-1.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Ffmt-tutorial-demux-1.qza)
-   [unfiltered/fmt-tutorial-demux-1.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Ffmt-tutorial-demux-1.qza)

------------------------------------------------------------------------

Part B: Sequence quality control
================================

Summarize individual runs
-------------------------

After generating these summaries, we will take a closer look at the
quality scores.


``` {.sourceCode .bash}
qiime demux summarize \
  --i-data unfiltered/fmt-tutorial-demux-1.qza \
  --o-visualization unfiltered/demux-summary-1.qzv
qiime demux summarize \
  --i-data unfiltered/fmt-tutorial-demux-2.qza \
  --o-visualization unfiltered/demux-summary-2.qzv
```


-   [unfiltered/demux-summary-1.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Fdemux-summary-1.qzv)
-   [unfiltered/demux-summary-2.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Fdemux-summary-2.qzv)

Denoising with DADA2
--------------------


``` {.sourceCode .bash}
qiime dada2 denoise-single \
  --i-demultiplexed-seqs unfiltered/fmt-tutorial-demux-1.qza \
  --p-trim-left 13 \
  --p-trunc-len 150 \
  --p-n-threads 0 \
  --o-representative-sequences unfiltered/rep-seqs-1.qza \
  --o-table unfiltered/table-1.qza \
  --verbose
qiime dada2 denoise-single \
  --i-demultiplexed-seqs unfiltered/fmt-tutorial-demux-2.qza \
  --p-trim-left 13 \
  --p-trunc-len 150 \
  --p-n-threads 0 \
  --o-representative-sequences unfiltered/rep-seqs-2.qza \
  --o-table unfiltered/table-2.qza \
  --verbose
```


-   [unfiltered/table-1.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Ftable-1.qza)
-   [unfiltered/table-2.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Ftable-2.qza)
-   [unfiltered/rep-seqs-1.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Frep-seqs-1.qza)
-   [unfiltered/rep-seqs-2.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Frep-seqs-2.qza)

Merging denoised data
---------------------

### Feature tables


``` {.sourceCode .bash}
qiime feature-table merge \
  --i-tables unfiltered/table-1.qza \
  --i-tables unfiltered/table-2.qza \
  --o-merged-table unfiltered/table.qza
```


-   [unfiltered/table.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Ftable.qza)

### Representative sequences


``` {.sourceCode .bash}
qiime feature-table merge-seqs \
  --i-data unfiltered/rep-seqs-1.qza \
  --i-data unfiltered/rep-seqs-2.qza \
  --o-merged-data unfiltered/rep-seqs.qza
```


-   [unfiltered/rep-seqs.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Frep-seqs.qza)

How would you merge 3 tables? How would you merge 4?

Generating summaries
--------------------

### Feature table


``` {.sourceCode .bash}
qiime feature-table summarize \
  --i-table unfiltered/table.qza \
  --m-sample-metadata-file sample-metadata.tsv \
  --o-visualization unfiltered/table.qzv
```


-   [unfiltered/table.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Ftable.qzv)

### Representative sequences


``` {.sourceCode .bash}
qiime feature-table tabulate-seqs \
  --i-data unfiltered/rep-seqs.qza \
  --o-visualization unfiltered/rep-seqs.qzv
```


-   [unfiltered/rep-seqs.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Frep-seqs.qzv)

------------------------------------------------------------------------

Part C: Sample metadata
=======================

Let's take a closer look at the sample metadata in use for this study.
We haven't needed it yet, but many of the upcoming commands work best
with (or downright require) the presence of study-specific sample
metadata!


``` {.sourceCode .bash}
qiime metadata tabulate \
  --m-input-file sample-metadata.tsv \
  --o-visualization sample-metadata.qzv
```


-   [sample-metadata.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fsample-metadata.qzv)

------------------------------------------------------------------------

Part D: Phylogenetic reconstruction
===================================

Other methods exist for generating a phylogenetic tree, this is just one
of them. For another great option, please check out
[q2-fragment-insertion](https://github.com/biocore/q2-fragment-insertion).

Align sequences
---------------


``` {.sourceCode .bash}
qiime alignment mafft \
  --i-sequences unfiltered/rep-seqs.qza \
  --o-alignment unfiltered/aligned-rep-seqs.qza
```


-   [unfiltered/aligned-rep-seqs.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Faligned-rep-seqs.qza)

Mask sequences
--------------


``` {.sourceCode .bash}
qiime alignment mask \
  --i-alignment unfiltered/aligned-rep-seqs.qza \
  --o-masked-alignment unfiltered/masked-aligned-rep-seqs.qza
```


-   [unfiltered/masked-aligned-rep-seqs.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Fmasked-aligned-rep-seqs.qza)

Generate tree
-------------


``` {.sourceCode .bash}
qiime phylogeny fasttree \
  --i-alignment unfiltered/masked-aligned-rep-seqs.qza \
  --o-tree unfiltered/unrooted-tree.qza
```


-   [unfiltered/unrooted-tree.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Funrooted-tree.qza)

Root tree
---------


``` {.sourceCode .bash}
qiime phylogeny midpoint-root \
  --i-tree unfiltered/unrooted-tree.qza \
  --o-rooted-tree unfiltered/rooted-tree.qza
```


-   [unfiltered/rooted-tree.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Funfiltered%2Frooted-tree.qza)

Visualize tree with iTOL (optional, time-dependent)
---------------------------------------------------

Head over to <https://itol.embl.de/> and load `rooted-tree.qza`. For
more details, see this [Forum
post](https://forum.qiime2.org/t/loading-greengenes-tree-in-itol/2319/10).

------------------------------------------------------------------------

Part E: Rarefaction
===================

Interactive rarefaction viz
---------------------------

Open up our `unfiltered/table.qzv` viz from earlier.

Alpha rarefaction
-----------------

We will cover *what* these various metrics mean in a later section, but
for now we are concerned with understanding how selecting an even
sampling depth will impact downstream analyses.


``` {.sourceCode .bash}
qiime diversity alpha-rarefaction \
  --i-table unfiltered/table.qza \
  --i-phylogeny unfiltered/rooted-tree.qza \
  --p-max-depth 8412 \
  --p-metrics faith_pd \
  --p-metrics shannon \
  --p-metrics observed_otus \
  --p-metrics chao1 \
  --m-metadata-file sample-metadata.tsv \
  --o-visualization alpha-rare.qzv
```


-   [alpha-rare.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Falpha-rare.qzv)

Pick a rarefaction depth
------------------------

Using alpha-rarefaction and the table summary above, determine a
rarefaction depth that might be appropriate for these data.

Beta rarefaction (optional, time-dependent)
-------------------------------------------


``` {.sourceCode .bash}
qiime diversity beta-rarefaction \
  --i-table unfiltered/table.qza \
  --p-metric jaccard \
  --p-clustering-method nj \
  --m-metadata-file sample-metadata.tsv \
  --p-sampling-depth 1355 \
  --o-visualization beta-rare.qzv
```


-   [beta-rare.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fbeta-rare.qzv)

Core metrics
------------

Where did we get the value `1355` from?


``` {.sourceCode .bash}
rm -rf core-metrics
qiime diversity core-metrics-phylogenetic \
  --i-table unfiltered/table.qza \
  --i-phylogeny unfiltered/rooted-tree.qza \
  --p-sampling-depth 1355 \
  --m-metadata-file sample-metadata.tsv \
  --output-dir core-metrics
```


-   [core-metrics/bray\_curtis\_distance\_matrix.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fbray_curtis_distance_matrix.qza)
-   [core-metrics/bray\_curtis\_emperor.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fbray_curtis_emperor.qzv)
-   [core-metrics/bray\_curtis\_pcoa\_results.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fbray_curtis_pcoa_results.qza)
-   [core-metrics/evenness\_vector.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fevenness_vector.qza)
-   [core-metrics/faith\_pd\_vector.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Ffaith_pd_vector.qza)
-   [core-metrics/jaccard\_distance\_matrix.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fjaccard_distance_matrix.qza)
-   [core-metrics/jaccard\_emperor.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fjaccard_emperor.qzv)
-   [core-metrics/jaccard\_pcoa\_results.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fjaccard_pcoa_results.qza)
-   [core-metrics/observed\_otus\_vector.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fobserved_otus_vector.qza)
-   [core-metrics/rarefied\_table.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Frarefied_table.qza)
-   [core-metrics/shannon\_vector.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fshannon_vector.qza)
-   [core-metrics/unweighted\_unifrac\_distance\_matrix.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Funweighted_unifrac_distance_matrix.qza)
-   [core-metrics/unweighted\_unifrac\_emperor.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Funweighted_unifrac_emperor.qzv)
-   [core-metrics/unweighted\_unifrac\_pcoa\_results.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Funweighted_unifrac_pcoa_results.qza)
-   [core-metrics/weighted\_unifrac\_distance\_matrix.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fweighted_unifrac_distance_matrix.qza)
-   [core-metrics/weighted\_unifrac\_emperor.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fweighted_unifrac_emperor.qzv)
-   [core-metrics/weighted\_unifrac\_pcoa\_results.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fweighted_unifrac_pcoa_results.qza)

------------------------------------------------------------------------

Part F: Getting data in and out of QIIME 2
==========================================

Exporting
---------

Let's start with exporting, since we already have some data on-hand that
has been imported into QIIME 2 (our raw reads from earlier).


``` {.sourceCode .bash}
qiime tools export \
  unfiltered/fmt-tutorial-demux-2.qza \
  --output-dir unfiltered/run2-reads
```


Let's take a look at the directory.


``` {.sourceCode .bash}
ls unfiltered/run2-reads
```


Importing
---------

First, clean up the directory so that only `fastq.gz` files remain.


``` {.sourceCode .bash}
rm unfiltered/run2-reads/metadata.yml unfiltered/run2-reads/MANIFEST
```


Check out the available types and formats for import.


``` {.sourceCode .bash}
qiime tools import --show-importable-types
qiime tools import --show-importable-formats
```


Reimport our reads.


``` {.sourceCode .bash}
qiime tools import \
  --type 'SampleData[SequencesWithQuality]' \
  --source-format CasavaOneEightSingleLanePerSampleDirFmt \
  --input-path unfiltered/run2-reads \
  --output-path unfiltered/reimported-reads.qza
```


------------------------------------------------------------------------

Part G: Alpha diversity statistics and visualizations
=====================================================

We don't have time to go into detail for each individual metric, so this
section will focus on the most interesting details relevant to this
study!

Alpha group significance (richness)
-----------------------------------


``` {.sourceCode .bash}
qiime diversity alpha-group-significance \
  --i-alpha-diversity core-metrics/faith_pd_vector.qza \
  --m-metadata-file sample-metadata.tsv \
  --o-visualization core-metrics/alpha-group-sig-faith-pd.qzv
```


-   [core-metrics/alpha-group-sig-faith-pd.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Falpha-group-sig-faith-pd.qzv)

`q2-longitudinal`
-----------------

Longitudinal analyses are simplified with
[`q2-longitudinal`](https://docs.qiime2.org/2018.2/tutorials/longitudinal/)
- it helps facilitate many common analyses for this type of experiment.

### Filtering to only the treatment group, stool samples

QIIME 2 filtering using SQL `WHERE` clauses. The backslashes are there
for escaping the double-quoted column names, necessary for SQLite.


``` {.sourceCode .bash}
mkdir longitudinal
qiime feature-table filter-samples \
  --i-table core-metrics/rarefied_table.qza \
  --m-metadata-file sample-metadata.tsv \
  --p-where "\"treatment-group\" = 'treatment' AND \"sample-type\" = 'stool'" \
  --o-filtered-table longitudinal/table.qza
```


-   [longitudinal/table.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Flongitudinal%2Ftable.qza)

Before running `q2-longitudinal`, let's check out what our filtered
table looks like.


``` {.sourceCode .bash}
qiime feature-table summarize \
  --i-table longitudinal/table.qza \
  --m-sample-metadata-file sample-metadata.tsv \
  --o-visualization longitudinal/table.qzv
```


-   [longitudinal/table.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Flongitudinal%2Ftable.qzv)

### Compute Shannon Index using filtered table


``` {.sourceCode .bash}
qiime diversity alpha \
  --i-table longitudinal/table.qza \
  --p-metric shannon \
  --o-alpha-diversity longitudinal/shannon.qza
```


-   [longitudinal/shannon.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Flongitudinal%2Fshannon.qza)

### Volatility


``` {.sourceCode .bash}
qiime longitudinal volatility \
  --m-metadata-file sample-metadata.tsv \
  --m-metadata-file longitudinal/shannon.qza \
  --p-group-column administration-route \
  --p-metric shannon \
  --p-state-column week \
  --p-individual-id-column subject-id \
  --p-spaghetti yes \
  --o-visualization longitudinal/volatility.qzv
```


-   [longitudinal/volatility.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Flongitudinal%2Fvolatility.qzv)

Alpha correlation (optional, time-dependent)
--------------------------------------------


``` {.sourceCode .bash}
qiime diversity alpha-correlation \
  --i-alpha-diversity core-metrics/faith_pd_vector.qza \
  --m-metadata-file sample-metadata.tsv \
  --o-visualization core-metrics/alpha-corr-faith-pd.qzv
```


-   [core-metrics/alpha-corr-faith-pd.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Falpha-corr-faith-pd.qzv)

------------------------------------------------------------------------

Part H: Beta diversity statistics and visualizations
====================================================

We don't have time to go into detail for each individual metric, so this
section will focus on the most interesting details relevant to this
study!

Beta group significance (unweighted unifrac)
--------------------------------------------


``` {.sourceCode .bash}
qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics/unweighted_unifrac_distance_matrix.qza \
  --m-metadata-file sample-metadata.tsv \
  --m-metadata-column sample-type \
  --o-visualization core-metrics/unweighted-unifrac-sample-type-significance.qzv \
  --p-pairwise
```


-   [core-metrics/unweighted-unifrac-sample-type-significance.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Funweighted-unifrac-sample-type-significance.qzv)

Emperor PCoA plot (Bray-Curtis)
-------------------------------

Try coloring by sample type and scaling by GSRS scale.


``` {.sourceCode .bash}
qiime emperor plot \
  --i-pcoa core-metrics/bray_curtis_pcoa_results.qza \
  --m-metadata-file sample-metadata.tsv \
  --p-custom-axes week \
  --o-visualization core-metrics/bray-curtis-emperor-week.qzv
```


-   [core-metrics/bray-curtis-emperor-week.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Fcore-metrics%2Fbray-curtis-emperor-week.qzv)

------------------------------------------------------------------------

Part I: Taxonomic classification and visualization
==================================================


``` {.sourceCode .bash}
mkdir taxonomy
```


Pre-trained classifier
----------------------

This classifier has been tuned for this tutorial, but you probably
wouldn't want to use this particualr classifier for your analysis.


``` {.sourceCode .bash}
wget -O "taxonomy/gg-13-8-99-515-806-nb-classifier.qza" \
  "https://data.qiime2.org/2018.2/common/gg-13-8-99-515-806-nb-classifier.qza"
```


-   [taxonomy/gg-13-8-99-515-806-nb-classifier.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Ftaxonomy%2Fgg-13-8-99-515-806-nb-classifier.qza)

Classify features
-----------------


``` {.sourceCode .bash}
qiime feature-classifier classify-sklearn \
  --i-classifier taxonomy/gg-13-8-99-515-806-nb-classifier.qza \
  --i-reads unfiltered/rep-seqs.qza \
  --o-classification taxonomy/taxonomy.qza
```


-   [taxonomy/taxonomy.qza](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Ftaxonomy%2Ftaxonomy.qza)

Summarize
---------


``` {.sourceCode .bash}
qiime metadata tabulate \
  --m-input-file taxonomy/taxonomy.qza \
  --o-visualization taxonomy/taxonomy.qzv
```


-   [taxonomy/taxonomy.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Ftaxonomy%2Ftaxonomy.qzv)

Barplots
--------


``` {.sourceCode .bash}
qiime taxa barplot \
  --i-table unfiltered/table.qza \
  --i-taxonomy taxonomy/taxonomy.qza \
  --m-metadata-file sample-metadata.tsv \
  --o-visualization taxonomy/barplots.qzv
```


-   [taxonomy/barplots.qzv](https://view.qiime2.org/?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fqiime2-workshops%2Ffmt%2Ftaxonomy%2Fbarplots.qzv)

