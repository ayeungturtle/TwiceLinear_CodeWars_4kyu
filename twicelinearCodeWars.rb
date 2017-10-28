def dbl_linear(n)
    running_array = [1]
    if (n==1)
        return running_array
    end
    for i in 0..(n*5).round do  ##the bigger the input got, the more I'd have to raise the n multiplier in this line.  I'd have to go back and redo the ordering logic inside this loop to avoid this.  or possibly just use n**2 in this line.
        running_array << 2 * running_array[i] + 1
        running_array << 3 * running_array[i] + 1
    end
    running_array = running_array.uniq.sort
    return running_array[n]
end

puts (dbl_linear(20)) 
