# About scPagwas

**scPagwas** employing the polygenic regression model to uncover
trait-relevant cell subpopulations by incorporating pathway activity
transformed scRNA-seq data with genome-wide association studies (GWAS)
data.

![Graphical abstract](./docs/reference/figures/Figures_1.jpg) The
methodology and benchmarking performance are described in:

Polygenic regression identifies trait-relevant cell subpopulations
through pathway activity transformed single-cell RNA sequencing
data.(2022)

Code for reproducing the analysis from the paper is available
[here](https://github.com/dengchunyu/scPagwas_reproduce).

For further usage on the scPagwas package, please refer to the
[tutorials](https://dengchunyu.github.io/scPagwas/).

## Installation

You can install the released version of scPagwas from
[github](https://github.com/dengchunyu/scPagwas) with:

``` r
#install some dependence packages
install.packages("SeuratObject")
install.packages("Seurat")
install.packages("ggpubr")
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("GenomicRanges")
BiocManager::install("IRanges")
devtools::install_github("dengchunyu/scPagwas")
```

## Usage

quick-start example:

``` r
 library(scPagwas)
 #1.start to run the wrapper functions for example.
 Pagwas_data<-scPagwas_main(Pagwas = NULL,
                     gwas_data =system.file("extdata", "GWAS_summ_example.txt", package = "scPagwas"), # The GWAS Summary statistics files 
                     Single_data =system.file("extdata", "scRNAexample.rds", package = "scPagwas"),# scRNA-seq data in seruat format with "RNA" assays and normalized.
                     output.prefix="test", # the prefix name for output files
                     output.dirs="scPagwastest_output",# the directory file's name for output
                     block_annotation = block_annotation,# gene position in chromosome is provided by package.
                     assay="RNA", # the assays for scRNA-seq data to use.
                     Pathway_list=Genes_by_pathway_kegg,# pathway list is provided by package, including gene symbols.
                     chrom_ld = chrom_ld,# The LD data is provided by package.
                     singlecell=T, # Whether to run the singlecell process.
                     celltype=T,# Whether to run the celltype process.
                     seruat_return=T,#Whether to return seruat format result.
                     ncores = 1 ) #The numbers of cores to run.
```

## Tutorials

scPagwas provides a number of tutorials for various situation. Please
also visit the documentation.

-   The “1.Data_input_preproccess_for_scPagwas” tutorial provides the
    methods of data-input preproccess for scPagwas.

-   The “2.Example1.Bmmc_monocytecount_singlecell&celltype_vignette”
    tutorial provides the usual procedure for scPagwas including the
    result interpretation are disccussed, and the visualization for
    result.

-   The data import and visualization tutorial focuses on loading data
    from different sources and visualizing their characteristics.

-   The tutorial on other methods explains how to apply other methods
    for differential abundance testing from within scCODA.
