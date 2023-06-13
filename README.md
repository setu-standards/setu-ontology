# SETU Planning Ontology
The SETU Planning ontology is used to exchange planning data between and with planning systems. It deals with electronically sending planning related information, including updates.

The Planning Ontology v1.0 is published at https://ontology.setu.nl/planning/. The .ttl file can be found [here](https://github.com/setu-standards/setu-ontology/blob/main/src/Planning_Ontology_v1.0.ttl).

The SHACL constraints for the Planning Ontology can be found [here](https://github.com/setu-standards/setu-ontology/blob/main/src/Planning_Constraints_v1.0.ttl).

For more information about the SETU Planning and Scheduling standard, see https://standard.setu.nl/docs/planning/.

# SETU Ontology
Domain language for the flexible staffing industry, developed in the Flexible with IT (FIT) project.

The ontology is published at https://ontology.setu.nl.

For more information about SETU see https://www.setu.nl.

# Documentation
To generate documentation for the SETU ontology we use the WIzard for DOCumenting Ontologies [WIDOCO](https://github.com/dgarijo/Widoco).

The [Dockerfile](./Dockerfile) specifies a build stage using Java JAR provided by WIDOCO and an NGINX webserver to publish the generated documentation.