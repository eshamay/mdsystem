# command line syntax for sander
# sander [-O] -i mdin -o mdout -p prmtop -c inpcrd -r restrt [-ref refc -x mdcrd -v mdvel -e mden -inf mdinfo]

# Run an equilibration on a d2o25 box

mpirun C sander -O -i $MD_HOME/mdin/extra-equilibration.mdin \
	  	   -p $MD_HOME/top/$1.top \
		   -c $MD_HOME/crd/$1.equilibrated.crd \
		   -idip $MD_HOME/crd/$1.equilibrated.dip \
	 	   -o $MD_HOME/mdout/$1.extra-equilibration.mdout \
		   -r $MD_HOME/crd/$1.extra-equilibrated.crd \
		   -rdip $MD_HOME/crd/$1.extra-equilibrated.dip
