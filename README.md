# ejbca-docker-sh

EJBCA docker image with own attribute DN

Updates the profilemappings.properties file by adding your Subject DN attribute.
Details in the documentation: https://www.ejbca.org/docs/Custom_Subject_DN_and_altName_OIDs.html

At the end of the file you need to add your own lines and build the container.

Version ejbca: 6.15.2.1

The dncomponents.properties file is the alias for the DN to not specify an OID when creating a certificate. But it is not documented, so errors are possible.
