# {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}
<br/>

## Introduction
This implementation guide is provided to support the use of FHIR resources for the NSW Health Integrated Transitions of Care (iTOC) project. The majority of the resource profiles provided here are based on definitions from the Australian Base Profiles Implementation Guide (version 2, based on FHIR version 4.0.0, and as of October 2019).

This document is a working specification that is expected to be implemented and tested by FHIR®© system producers to enable feedback to improve the content of this guide.
<br/><br/>

## Scope

This implementation guide supports the following scope:

* **Medication List** - A record of a Patient’s medications during an Encounter. The Medication List is used during an Encounter to record medicines to continue after admission, and identify any new or changed Medication Orders, and document the medication plan for the Patient. The Medication List forms part of the patient’s Medical Record.

* **Medication History** - A record of all the medicines (prescribed medicines; non-prescribed, over-the-counter; complementary / herbal medicines; PRN meds) actually taken by the patient in the period immediately before admission into hospital.

* **Medication Administration Record** - Provides the record of the medications administered including all active scheduled, unscheduled, PRN and continuous infusions for a specific patient.
<br/><br/>

## Usage

This document is a working specification that may be directly implemented by system vendors with the capability to produce and consume FHIR<sup>&reg;&copy;</sup>.

Information contained in this implementation guide provides the minimal requirements for use in NSW Health Integrated Transitions of Care (iTOC) project scenarios. 
To that end it specifies key entities and elements thereof needed for sending medication lists, medication histories and medication administration records.

FHIR<sup>&reg;&copy;</sup> connectathon events are an important part of the verification of this guide as being suitable for implementation. This implementation guide may be used as the basis for Australian connectathon events.
<br/><br/>

## Collaboration
This guide is the product of collaborative work undertaken with participants from:

* NSW Health Integrated Transitions of Care (iTOC) Project Team
* NSW Health Investments, Strategy and Architecture Team
* HL7 Australia Medications Working Group
<br/><br/>
