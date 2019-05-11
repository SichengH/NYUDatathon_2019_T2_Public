library(data.table)
comobs <- fread("Elixhauser Comorbidities.csv")

colnames(comobs)

comobs[, heart_failure:=CONGESTIVE_HEART_FAILURE]
comobs[, lung_disease:=CHRONIC_PULMONARY]
comobs[, cancer:=METASTATIC_CANCER+SOLID_TUMOR]

fwrite(comobs[, list(HADM_ID = hadm_id, heart_failure, lung_disease, cancer)], 
       'comobs.csv')