clearVariables
#
#	Monovalent, monoatomic ions using '94 atom types.
#	The Li+..Cs+ series uses types derived from the
#	work of Aqvist (see force field documentation).
#	IB (ion+water) is a hack for vacuum modeling.
#

i = createAtom NA  IP  1.0
set i    element Na
set i    position { 0 0 0 }
r = createResidue na+
add r i
na+ = createUnit na+
add na+ r
saveOff na+ lib/ions.lib

i = createAtom K IK 1.0
set i element K
set i position { 0 0 0 }
r = createResidue k+
add r i
k+ = createUnit k+
add k+ r
saveOff k+ lib/ions.lib

i = createAtom   CL  IC  -1.0
set i    element Cl
set i    position { 0 0 0 }
r = createResidue cl-
add r i
cl- = createUnit cl-
add cl- r
saveOff cl- lib/ions.lib

i = createAtom   BR  IB  -1.0
set i    element Br
set i    position { 0 0 0 }
r = createResidue br-
add r i
br- = createUnit br-
add br- r
saveOff br- lib/ions.lib


quit
