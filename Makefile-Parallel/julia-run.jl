using Base.Threads: @threads

n_simulations = 2
n_procs = 4

@threads for i in 1:n_simulations
    run(pipeline(`julia -t$n_procs simulation.jl ">" equilibration$i.log`))
    run(pipeline(`julia -t$n_procs simulation.jl ">" production$i.log`))
end


