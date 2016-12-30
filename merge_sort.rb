def merge_sort(array)
	#p array
	new_array = []
	if array.length <=2
		a_array = [array[0]]
		b_array = [array[-1]]
	else
		a_array = merge_sort(array[0...(array.length / 2)])
		b_array = merge_sort(array[(array.length / 2)..-1])

	end
	b_count = 0
	a_array.each do |a|
		b = b_array[b_count]
		until b.nil? || a <= b 
			new_array << b
			b_count += 1
			b = b_array[b_count]
		end
		new_array << a
	end
	new_array = new_array + b_array[b_count..-1] unless b_array[b_count].nil?
	p new_array
	new_array
end


array = [1,4,5,11,22,3,5,2,18,29,43,3,9,1,10]
p merge_sort(array)