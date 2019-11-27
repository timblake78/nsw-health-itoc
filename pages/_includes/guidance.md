# {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}
<br/>

## Introduction
There are a number of FHIR resource types used to construct medication lists, medication histories and medication administration records. 
<br/><br/>


## Definition of mustSupport

This Implementation Guide is a refinement of AU Base for the NSW Health Integrated Transitions of Care context. An open modelling approach has been taken which means that in general, anything present in AU Base has not been forbidden except where absolutely necessary.

However, it is not the intention that every element in AU Base be supported by implementers and those elements that should be supported have been indicated with the use of the “mustSupport” flag.

It is the responsibility of an Implementation Guide that chooses to use the mustSupport flag to define the meaning of the flag within the Implementation Guide.

For this Implementation Guide, if the mustSupport flag is true for an element, receiving systems must expect that the element could be present in a resource, but it does not mandate the presence of that element.

While not explicitly flagged, the “text” field in a CodeableConcept are implicit mustSupport fields to facilitate data transfer where codes cannot be transferred.
<br/><br/>

## System Capabilities

It is not assumed that systems sharing medication lists are capable of supporting a REST interface which allows access to individual resources.

However, in the event that receiving systems have REST capabilities, then Bundles (for all the use cases below) should pass references to remote Practioner, Prescription and Medication resources, where possible.  If this is not possible then receiving systems should check for the existence of Practioner, Prescription and Medication resources before persisting them.
<br/><br/>

## Medication List

The medication list bundle can be retrieved using the [$medlist-lookup](StructureDefinition-medlist-lookup.html) operation.
<br/><br/>

The following diagram shows the logical model for Medication List:

<div>
<img src="assets/images/Medication List.png" height="500"/>
</div>
<br/>

* Medication lists should be sent as a Bundle with type="message".
* All resources should be included directly as root level entries in the bundle, with appropriate id references between resources.  Where URL locators are not available, uuids should be used.
* The medication list bundle must contain a single [NSWHealthiTOCMessageHeader](StructureDefinition-nswhealthitocmessageheader.html) resource as its first entry.
* The [NSWHealthiTOCMessageHeader](StructureDefinition-nswhealthitocmessageheader.html) resource should have a fixed event code of "medication-list".
* The medication list bundle must contain a single [NSWHealthiTOCPatient](StructureDefinition-nswhealthitocpatient.html) resource.
* The medication list bundle must contain a single List resource which provides an order for the MedicationStatements in the bundle. Target systems may process this List if they are capable of doing so.
* The medication list bundle must provide zero or more [NSWHealthiTOCMedicationStatement](StructureDefinition-nswhealthitocmedicationstatement.html) resources.
<br/><br/>

## Medication History

The medication list bundle can be retrieved using the [$medhistory-lookup](StructureDefinition-medhistory-lookup.html) operation.
<br/><br/>

The following diagram shows the logical model for Medication History:

<div>
<img src="assets/images/Medication History.png" height="500"/>
</div>
<br/>

* Medication histories should be sent as a Bundle with type="message".
* All resources should be included directly as root level entries in the bundle, with appropriate id references between resources.  Where URL locators are not available, uuids should be used.
* The medication history bundle must contain a single [NSWHealthiTOCMessageHeader](StructureDefinition-nswhealthitocmessageheader.html) resource as its first entry.
* The [NSWHealthiTOCMessageHeader](StructureDefinition-nswhealthitocmessageheader.html) resource should have a fixed event code of "medication-history".
* The medication history bundle must contain a single [NSWHealthiTOCPatient](StructureDefinition-nswhealthitocpatient.html) resource.
* The medication history bundle must contain a single List resource which provides an order for the MedicationStatements in the bundle. Target systems may process this List if they are capable of doing so.
* The medication list bundle must provide zero or more [NSWHealthiTOCMedicationStatement](StructureDefinition-nswhealthitocmedicationstatement.html) resources.
<br/><br/>

**Examples**

[Medication History Bundle Example](Bundle-patientprofile1-medhistory.html)
<br/><br/>

## Medication Administration Record

The medication list bundle can be retrieved using the [$mar-lookup](StructureDefinition-medhistory-lookup.html) operation.
<br/><br/>

The following diagram shows the logical model for Medication Administration Record:

<div>
<img src="assets/images/Medication Administration Record.png" height="500"/>
</div>
<br/>

* Medication administration records should be sent as a Bundle with type="message".
* All resources should be included directly as root level entries in the bundle, with appropriate id references between resources.  Where URL locators are not available, uuids should be used.
* The medication administration record bundle must contain a single [NSWHealthiTOCMessageHeader](StructureDefinition-nswhealthitocmessageheader.html) resource as its first entry.
* The [NSWHealthiTOCMessageHeader](StructureDefinition-nswhealthitocmessageheader.html) resource should have a fixed event code of "medication-administration-record".
* The medication administration record bundle must contain a single [NSWHealthiTOCPatient](StructureDefinition-nswhealthitocpatient.html) resource.
* The medication administration record bundle must contain a single List resource which provides an order for the MedicationAdministrations in the bundle. Target systems may process this List if they are capable of doing so.
* The medication list bundle must provide zero or more [NSWHealthiTOCMedicationAdministration](StructureDefinition-nswhealthitocmedicationadministration.html) resources.
<br/><br/>
