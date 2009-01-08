BEGIN {
	atom=0;
}

{
	if (atom == 3) {
		atom = 0;
		print "TER";
	}
	print
	atom = atom+1;
}
