# NYUDatathon2019_T2

### What is the clinical significance and impact on prognosis of paroxysmal atrial fibrillation in the course of acute pulmonary embolism?
### Datatset: Mimic III 

In our study, we utilized Google's BigQuery MIMIC 3 Critical Care database to answer our clinical question.

### Data
Inclusion criteria for our study was as follows:
* Age >18 years
* Diagnosis of PE by any of the following
  * ICD-9 code 415.*
  * DRG Code 134.*, 175, 176
* Chest CT scan with contrast was performed within 24 hours of ICU admission
* Documented sinus rhythm during ICU admission

Patients were then divied into 2 distinct cohorts:
* Patients with atrial fibrilliation
* Patients that remained in normal sinus rhythm

Based on our inclusion criteria, 231 patients were elegible for inclusion: 1) 192 Pulmonary emoblism sinus rhythm pateints and 2) 39 Pulmonary embolism with atrial fibrillation conversion pateints

Input features of interest included:
* sPESI Score
  * Age
  * History of cancer
  * History of cardiopulmonary disease
  * Heart Rate
  * Systolic BP
  * O2 Saturation
* Atrial Fibrillation

Primary outcome of interest: 30-day all cause mortailty

### Methodology
We first assessed the predictive utility of the Simplified Pulmonary Embolism Severity Index (sPESI) using an area under receiver operating curve (AUROC) utilizing its default weights. Briefly, patients with sPESI score >= 1 are considered high risk, with an overall risk of mortality of 8.9%. Each increasing point confers a higher risk of mortality. A link to the sPESI score can be seen below:
https://www.mdcalc.com/simplified-pesi-pulmonary-embolism-severity-index

We utilized the sPESI features and subjected to a logistic regression to assess if its predictive utility could be improved. A third model with atrial fibrillation was developed to evaluate the effect of new-onset cardiac arrythmia on 30-day mortality.

Calibration and discrimination models were formed to further evaluate the accuracy for absolute risk of mortality.

### Outcomes
From our study, we found the sPESI score to have an AUROC of 0.77.
Readjusting the weights based on our data, we obtained adjusted sPESI score AUROC of 0.86.
When including atrial fibrillation into our adjusted sPESI score, AUROC improved to 0.87.

Chi-square testing verified an improvement in 30-day all cause mortaility with a p<.05.

### Conclusion
Atrial fibrillation is correlated with a modest increase in 30-day all cause mortality. Larger sample sizes are warranted to better assess its effects. 
