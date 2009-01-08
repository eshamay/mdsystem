# command line syntax for sander
# sander [-O] -i mdin -o mdout -p prmtop -c inpcrd -r restrt [-ref refc -x mdcrd -v mdvel -e mden -inf mdinfo]

mpirun C sander -O \
		   -i $MD_HOME/mdin/restart.mdin \
	  	   -p $MD_HOME/top/hno3sys.top \
		   -c $MD_HOME/restrt/hno3slab.restart.restrt \
		   -idip $MD_HOME/dip/hno3sys.data.dip \
		   -r /common/eric/MD/restrt/hno3slab.data.restrt \
	 	   -o /common/eric/MD/mdout/hno3slab.data.mdout \
		   -x /common/eric/MD/crd/hno3slab.data.crd \
		   -v /common/eric/MD/vel/hno3slab.data.vel \
		   -e /common/eric/MD/en/hno3slab.data.mden \
		   -rdip /common/eric/MD/dip/hno3slab.data.dip
