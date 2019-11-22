This profile contains the following variations from [MedicationStatement](http://hl7.org/fhir/STU3/MedicationStatement):

1. <span style='color:green'> extension </span>  sliced
   * Medication Long Term Indicator extension
   * Medication Brand Name extension
   * Medication Generic Drug Name extension
1. <span style='color:green'> medication[x] </span> Medication Detail sliced
   * <span style='color:green'> medication[x] </span> Coded Medication
   * <span style='color:green'> coding </span> PBS Item Code
   * <span style='color:green'> coding </span> Medication Package Global Trade Item Number (GTIN)
   * <span style='color:green'> coding </span> AMT Medicines
      * Class of Medication Coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> MIMS Package
   * <span style='color:green'> medication[x] </span> Medication Reference (Reference as: au-medication)
   * <span style='color:green'> coding </span> Reason Not Taken (SNOMED CT)
   * <span style='color:green'> coding </span> Reason For Medication (SNOMED CT)
1. <span style='color:green'> dosage </span> 