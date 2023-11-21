# Mutual_Connection_Challenge

The database we will use for this assignment concerns workers in the data space who recently attended an AI conference.

The workers table makes note of who’s who
The connected table notes who’s connected on linkedin
The wants_to_work_with table notes who wants to work with who (id1 wants to work with id2)

Your task is to write a query that will:

For each worker A who wants to work with a worker B where the two are not connected, find if they have a connection C in common. For all such trios, return the name and company of A, B, and C.

This should be the result but it should be created dynamically, not through any sort of hard-coding. 

Hiren | FutureTek | Ensieh | Microsoft | Gabriel | Microsoft

Austin | TD | Jordan | CIBC | Hiren | FutureTek

Austin | TD | Jordan | CIBC | Kyle | CIBC
