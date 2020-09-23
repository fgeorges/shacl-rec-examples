# SHACL REC examples

Examples from the [SHACL Recommendation](https://w3.org/TR/shacl/).

This repository contains the same content as in the REC, only extracted and
presented as separate files, which is more convenient sometimes.  Please see the
REC for details about the IP of the content.

Basically, the idea would be to have a file named `1.2-conventions/data.ttl`
with the following content (and then similar files for each other code sample in
the REC):

    # This box represents an input data graph.
    # When highlighting is used in the examples:

    # Elements highlighted in blue are focus nodes
    ex:Bob a ex:Person .

    # Elements highlighted in red are focus nodes that fail validation
    ex:Alice a ex:Person .
