Breast Cancer Gene Expression Analysis

Overview

This project analyzes a public breast cancer gene-expression dataset from the NCBI Gene Expression Omnibus. It compares normal breast tissue with breast cancer samples to identify differentially expressed microarray probes and explore major patterns in the dataset.

Dataset

* Dataset: GSE42568
* Platform: GPL570 — Affymetrix Human Genome U133 Plus 2.0 Array
* Source: NCBI Gene Expression Omnibus
* Normal samples: 17
* Breast cancer samples: 104
* Data type: Processed log2 GC-RMA gene-expression values

Dataset: NCBI GEO GSE42568

Objectives

* Retrieve a public gene-expression dataset programmatically
* Separate normal and cancer samples using sample metadata
* Inspect data quality and expression distributions
* Perform principal component analysis
* Test for differential expression between the two groups
* Correct for multiple hypothesis testing
* Visualize significant results
* Map microarray probe identifiers to gene symbols
* Export reproducible result tables

Methods

The analysis includes:

1. Data retrieval from NCBI GEO
2. Expression-matrix and metadata preparation
3. Quality-control visualization
4. Principal component analysis
5. Welch’s independent-samples t-test
6. Benjamini–Hochberg false-discovery-rate correction
7. Volcano-plot visualization
8. Heatmap visualization
9. GPL570 probe-to-gene annotation
10. CSV export of the statistical results

Welch’s t-test was selected because the normal and cancer groups have unequal sample sizes and may have unequal variances.

Tools and Libraries

* Python
* pandas
* NumPy
* SciPy
* statsmodels
* scikit-learn
* Matplotlib
* Seaborn
* GEOparse
* Google Colab

Files

* Breast_Cancer_Gene_Expression_Analysis.ipynb — complete executed analysis
* README.md — project documentation

The notebook also generates:

* GSE42568_differential_expression_results.csv
* GSE42568_sample_metadata.csv
* GSE42568_project_summary.csv

Interpretation

The project demonstrates a reproducible introductory workflow for analyzing public microarray gene-expression data. PCA summarizes major variation among samples, while differential-expression testing identifies probes whose mean expression differs between normal and cancer tissue.

Statistical significance does not by itself establish biological causation or clinical usefulness. Results would require independent validation, consideration of clinical variables, and confirmation in additional datasets.

Skills Demonstrated

* Biological-data retrieval
* Gene-expression analysis
* Data cleaning and validation
* Exploratory data analysis
* Statistical hypothesis testing
* Multiple-testing correction
* Dimensionality reduction
* Biological annotation
* Scientific visualization
* Reproducible research
