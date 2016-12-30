def fibs number
	fibs_array = [0,1]
	until fibs_array.length == number
		fibs_array << (fibs_array[-1] + fibs_array[-2])
	end
	return fibs_array
end

#def fibs_rec number

#end

def fibs_rec(num, fibs_array = [0,1])
	return fibs_array if num == 2
	fibs_rec((num-1), (fibs_array << (fibs_array[-1] + fibs_array[-2])))
end

p fibs(10)
p fibs_rec(20)