# BRCA1 Sequence Analysis with Biopython

## Overview

This project retrieves the human BRCA1 reference transcript from NCBI and performs an introductory bioinformatics analysis using Python and Biopython.

## Objectives

- Retrieve a biological record programmatically from NCBI
- Calculate nucleotide composition and GC content
- Visualize local GC content across the transcript
- Search for selected sequence motifs
- Extract the annotated coding sequence
- Translate coding DNA into a protein sequence
- Visualize amino-acid composition

## Tools

- Python
- Biopython
- pandas
- Matplotlib
- Google Colab

## Dataset

Human BRCA1 transcript, NCBI RefSeq accession `NM_007294.4`. The notebook retrieves the GenBank record directly from NCBI.

## Key Point

The project uses the annotated coding sequence in the GenBank record instead of assuming that every `ATG` represents the genuine translation start site.

## How to Run

Open `BRCA1_Sequence_Analysis.ipynb` in Google Colab and select **Runtime → Run all**.

## Limitations

This is an introductory analysis of one reference transcript. It does not assess patient variants or provide clinical interpretations.
