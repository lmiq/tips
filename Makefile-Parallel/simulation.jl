
result = 0.

Threads.@threads for i in 1:10000
    for j in 1:10000
        global result += sin(i*j)
    end
end

println("RESULT = $result")
