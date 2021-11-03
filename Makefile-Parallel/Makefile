# execute with:
#             make -jN 
# where N is the number of parallel tasks

# Number of cores per simulation
NP=4

#
# Simulations
#
all: sim1_production sim2_production 

#
# First simulation
#
sim1_production : equilibration1.log
	julia -t$(NP) simulation.jl > production1.log

equilibration1.log :  
	julia -t$(NP) simulation.jl > equilibration1.log

#
# Second simulation
#
sim2_production : equilibration2.log
	julia -t$(NP) simulation.jl > production2.log

equilibration2.log :  
	julia -t$(NP) simulation.jl > equilibration2.log

#
# clean
#
clean : 
	rm -rf *.log
	
