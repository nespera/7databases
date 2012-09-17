From the gremlin console, you can do this, to load the graphml file:
g.loadGraphML('/path/to/file.graphml')

to load in the Groovy script do this:
load /path/to/groovy/script

Then sibling1 works, but sibling2 doesn't:

gremlin> g.V.filter{it.name=='Chris'}.sibling1.name
==> Ed
gremlin> g.V.filter{it.name=='Chris'}.sibling2.name
==> Ed
==> Chris
