# About scPagwas

<img src="./man/figures/logo.png#pic_cencter" width="10%" style="display: block; margin: auto;" />

**scPagwas** employing the polygenic regression model to uncover trait-relevant cell subpopulations by incorporating pathway activity transformed scRNA-seq data with genome-wide association studies (GWAS) data.

<img src="./man/figures/Figure1.1.png" width="100%" style="display: block; margin: auto;" />

The methodology and benchmarking performance are described in:

Polygenic regression uncovers trait-relevant cellular contexts through
pathway activation transformation of single-cell RNA sequence
data.(2023)

Code for reproducing the analysis from the paper is available
[here](https://github.com/dengchunyu/scPagwas_reproduce).

For further usage on the scPagwas package, please refer to the
[tutorials](https://github.com/sulab-wmu/scPagwas/). A vignette for
using also can be accessed using browseVignettes(“scPagwas”)

## Installation

You can install the released version of scPagwas from
[github](https://github.com/sulab-wmu/scPagwas) with:

``` r
#install some dependence packages
install.packages("SeuratObject")
install.packages("Seurat")
install.packages("ggpubr")
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("GenomicRanges")
BiocManager::install("IRanges")

devtools::install_github("sulab-wmu/scPagwass")
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
                     celltype=T# Whether to run the celltype process.
)
```

## Tutorials

scPagwas provides a number of tutorials for various situation. Please
also visit the documentation.

-   The
    [Data_input_preproccess_for_scPagwas](https://github.com/dengchunyu/BlogPagwas/blob/d3d5e30b57acba7cca8df18bef82b7c5c8a24512/content/post/2023-03-08-data-input-preproccess-for-scpagwas.md)
    tutorial provides the methods of data-input preproccess for
    scPagwas.

-   The
    [Bmmc_monocytecount_singlecell_celltype_vignette](https://github.com/dengchunyu/BlogPagwas/blob/d3d5e30b57acba7cca8df18bef82b7c5c8a24512/content/post/2023-03-09-bmmc-monocytecount-singlecell-celltype-vignette.md)
    tutorial provides the usual procedure for scPagwas including the
    result interpretation are discussed, and visualizing their
    characteristics.

-   The
    [Running_scPagwas_steps_by_SubFunctions](https://github.com/dengchunyu/scPagwas/blob/main/docs/articles/Running_scPagwas_steps_by_SubFunctions.html)
    tutorial provides the procedure for only cell types or single cell
    functions; Otherwise, a step by step introduction for scPgawas
    sub-functions also provided.

-   The
    [Multi_TraitFiles_for_one_SingleData_running](https://github.com/dengchunyu/scPagwas/blob/main/docs/articles/Multi_TraitFiles_for_one_SingleData_running.html)
    tutorial provides the procedure that running scPagwas based on
    multiple trait files in one scRNA-seq data.

-   The
    [Split_big_scRNAseqData_and_integrate_result](https://github.com/dengchunyu/scPagwas/blob/main/docs/articles/Split_big_scRNAseqData_and_integrate_result.html)
    tutorial provides procedure that running scPagwas with several
    splited scRNA-seq data which the whole data is too big for running.
