# Project: ADRD Genetic Diversity in Biobanks
# Version:R/4.3.1
# Last Updated: 26-October-2024

# Notebook Overview
## check r2 model, check interaction model

# Variables used 
## `${ancestry}` = EUR, AFR, AMR, EAS, SAS, AAC, MDE, AJ, FIN, CAS, CAH
## `${APOE}`= e4 carrier, e4e4, e3e3
## APOE_STATUS= e4 carrier, e4e4, e3e3

# r2 model

## Load the dataset in R
data <- read.table("${WORK_DIR}/covars_alldata_with999forAGRandRACE_PCA_${APOE}_allvariants_mapped_${ancestry}.txt", 
                   header = TRUE, sep = "\t")

## Check if the data has been loaded correctly
head(data)

## Specify the file where results will be saved
output_file <- "/${WORK_DIR}/linear_model_results_${ancestry}.txt"

## Clear the output file at the start
write("", file = output_file)

## Run the linear regression for each variant, print, and save the results

## Variant 1 (This code was replicated for all protective/resilient variants)
r2.model <- lm(chr2.26135287.A.G ~ APOE_STATUS + SEX + AGE + PC1 + PC2 + PC3 + PC4 + PC5, data = data)
summary(r2.model)
sink(output_file, append = TRUE)
cat("\n\nResults for chr2.26135287.A.G\n")
print(summary(r2.model))
sink()


# Interaction model

## Load the dataset in R
data <- read.table("${WORK_DIR}/covars_alldata_with999forAGRandRACE_PCA_${APOE}_allvariants_mapped_${ancestry}.txt", 
                   header = TRUE, sep = "\t")

## Check if the data has been loaded correctly
head(data)

## Specify the file where results will be saved
output_file <- "${WORK_DIR}/GLM_interaction_model_results_${ancestry}.txt"

## Clear the output file at the start
write("", file = output_file)

## Convert PHENO to a factor
data$PHENO <- factor(data$PHENO, levels = c(1, 2))  # 1 = Control, 2 = Case

## Variant 1 (This code was replicated for all protective/resilient variants)
interaction_model <- glm(PHENO ~ chr2.26135287.A.G * APOE_STATUS + SEX + AGE + PC1 + PC2 + PC3 + PC4 + PC5, 
                         data = data, 
                         family = binomial)
sink(output_file, append = TRUE)
cat("\n\nResults for chr2.26135287.A.G\n")
print(summary(interaction_model))
sink()









