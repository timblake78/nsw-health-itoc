@echo off 


java -Xmx2048m -jar "org.hl7.fhir.publisher.jar" -ig ig.json -tx https://r4.ontoserver.csiro.au/fhir

