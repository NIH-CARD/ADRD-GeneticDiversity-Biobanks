# Biobank-scale characterization of Alzheimer’s disease and related dementias identifies potential disease-causing variants, risk factors, and genetic modifiers across diverse ancestries

`CARD ❤️ Open Science 😍`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13363465.svg)](https://doi.org/10.5281/zenodo.13363465)

**Last Updated:** February 2025

## Summary
This is the online repository for the article titled **" Biobank-scale characterization of Alzheimer’s disease and related dementias identifies potential disease-causing variants, risk factors, and genetic modifiers across diverse ancestries"**. This study aims to conduct genetic characterization of key genes associated with dementia across different ancestry populations using the largest biobank-scale datasets, including All of Us, UK Biobank, ADSP, AMP-PD, and 100KGP. We also assessed 21 previously reported protective and resilient variants among all *APOE* carriers across all ancestries and datasets.

## Citation
If you use this repository or find it helpful for your research, please cite the corresponding manuscript:

> Biobank-scale characterization of Alzheimer’s disease and related dementias identifies potential disease-causing variants, risk factors, and genetic modifiers across diverse ancestries (Khani et al., 2024)
>> Manuscript DOI: 10.1101/2024.11.03.24313587
>>  GitHub DOI: 10.5281/zenodo.13363465

### Data Statement 
* The All of Us genomic data are available under restricted access for human subject data. Access can be obtained by following the instructions under the AllofUs workbench
* Primary data from the 100KGP, which are held in a secure Research Environment, are available to registered users. Please see https://www.genomicsengland.co.uk/about-gecip/for-gecip-members/data-and-data-access for further information

  # Repository Orientation 
- The `analyses/` directory includes all analyses discussed in the manuscript
  
```
THIS_REPO
├── README.md
└── analyses
    ├── 00_ADSP.ipynb
    ├── 00_AMP_PD.ipynb
    ├── 00_AllofUs.ipynb
    ├── 00_UKB.ipynb
    ├── 01_Visualization.ipynb
    ├── 02_Regression_analysis.ipynb
    ├── 03_R2_and_Interaction_models.R
    ├── 04_PRS.ipynb
    └── 05_Burden_Analysis.ipynb
```

### Analysis Notebooks
* Languages: Python, R, and Bash

 **Notebook** | **Description**                                                                                         |
--------------|---------------------------------------------------------------------------------------------------------|
00_UKB | Fetch cohorts, ancestry info, remove related individuals, filter non-WGS, combine pVCFs, normalize VCFs, annotate, allele freqs, APOE genotyping, phenotype data, resilience/protective variants |
00_AMP_PD    | Check variants, APOE genotyping, define cases/controls by ancestry, demographic data, resilience/protective variants |
00_AllofUs   | Create cohorts (AD, Dementia, Control), gene characterization, Genotools prep and application, allele freqs, APOE genotyping, ancestry definition, demographic data, resilience/protective variants |
00_ADSP      | Check variants, allele freqs, calculate missingness, APOE genotyping, demographic data, resilience/protective variants |
01_Visualization      | visualization, including: heatmaps, barplots for APOE genotypes, mutation sites on protein structures, beta values using Upset plots, and PCA plots |
02_Regression_analysis.ipynb      | Using logistic regression to analyze the protective and conditional models and create covariate files for r2 and interaction models |
03_R2_and_Interaction_models.R      | Linear regression models adjusted by APOE status, sex, age, and PCs as well as interaction models between APOE status and specific variants  |
04_PRS.ipynb     | Calculate polygenic risk score and perform logistic regression  |
05_Burden_Analysis.ipynb      | Burden analysis for all genes, corrected by covariates  |
