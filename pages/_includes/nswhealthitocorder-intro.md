**NSW Health iTOC Order**

A medication order with mandatory status and requester.

#### Usage Notes
The status element should be used to indicate whether this medication request is currently active, has been completed, cancelled or stopped, etc.  It is strongly recommended that the dispenseRequest.validityPeriod element is used to indicate start and cease times for the medication request.

Where this order is an overarching order for a recurring future medication, the intent attribute should be set to "order" (see [Basic Medication Order](MedicationRequest-example0.html)). This order can optionally reference a NSWHealthiTOCMedicationAdministration resource via the mostrecentadmin reference extension.

Where this order describes the next scheduled dose, the  intent attribute should be set to "instance-order" (see [Medication Instance Order - Next Scheduled Dose](MedicationRequest-example1.html)).

**Examples**

[Basic Medication Order](MedicationRequest-example0.html)

[Medication Instance Order - Next Scheduled Dose](MedicationRequest-example1.html)
