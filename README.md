# Biobank-scale characterization of Alzheimer’s disease and related dementias across diverse ancestries identifies risk, protective and resilient genetic variation linked to disease etiology

`CARD ❤️ Open Science 😍`

DOI: pending

**Last Updated:** August 2024

## Summary
This is the online repository for the article titled **"Biobank-scale characterization of Alzheimer’s disease and related dementias across diverse ancestries identifies risk, protective and resilient genetic variation linked to disease etiology"**. This study aims to conduct genetic characterization of key genes associated with dementia across different ancestry populations using the largest biobank-scale datasets, including All of Us, UK Biobank, ADSP, AMP-PD, and 100KGP. We also assessed 24 previously reported protective and resilient variants among all *APOE* carriers across all ancestries and datasets.

Pre-print link: pending


### Data Statement 
* The All of Us genomic data are available under restricted access for human subject data. Access can be obtained by following the instructions under the AllofUs workbench
* Primary data from the 100KGP, which are held in a secure Research Environment, are available to registered users. Please see https://www.genomicsengland.co.uk/about-gecip/for-gecip-members/data-and-data-access for further information

  # Repository Orientation 
- The `analyses/` directory includes all analyses discussed in the manuscript
  
```
THIS_REPO
├── README.md
└── analyses/
    ├── 00_UKB.ipynb
    ├── 00_AMP_PD.ipynb
    ├── 00_AllofUs.ipynb
    └── 00_ADSP.ipynb
```

### Analysis Notebooks
* Languages: Python and Bash

 **Notebook** | **Description**                                                                                         |
--------------|---------------------------------------------------------------------------------------------------------|
00_UKB.ipynb | Fetch cohorts, ancestry info, remove related individuals, filter non-WGS, combine pVCFs, normalize VCFs, annotate, allele freqs, APOE genotyping, phenotype data |
00_AMP PD    | Check variants, APOE genotyping, define cases/controls by ancestry, demographic data, resilience/protective variants |
00_AllofUs   | Create cohorts (AD, Dementia, Control), gene characterization, Genotools prep and application, allele freqs, APOE genotyping, ancestry definition, demographic data, resilience/protective variants |
00_ADSP      | Check variants, allele freqs, calculate missingness, APOE genotyping, demographic data, resilience/protective variants |
