# ~/.julia/config/startup.jl

println(" Loading .julia/config/startup.jl ")
#using Revise ; println(" Loading Revise... ")

function nogtk()
  if ( "GKSwstype" in keys(ENV) )
    if ENV["GKSwstype"] == "nul"
      return
    end
  end
  ENV["GKSwstype"]="nul" # This supresses the need of a display while plotting
  println("Will not display plot in GUI.")
end

function path(dir :: String)
 if ! ( dir in LOAD_PATH )
   push!(LOAD_PATH,dir)
   println("Added $dir to LOAD_PATH")
 end
end



