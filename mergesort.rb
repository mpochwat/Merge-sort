def merge_sort(arr)
	length = arr.length
	return arr if length == 1
	a = arr[0..length/2-1]
	b = arr[length/2..length]
	merge( merge_sort(a), merge_sort(b) )
end

def merge(a, b, sorted=[])
	while !a.empty? || !b.empty?
		if a.empty?
			sorted.concat(b)
			b.clear
		elsif b.empty?
			sorted.concat(a)
			a.clear
		elsif a[0] < b[0]
			sorted << a.shift
		else
			sorted << b.shift
		end
	end	
	sorted
end

p merge_sort([1])
p merge_sort([1,2])
p merge_sort([2,-1])
p merge_sort([2,1,3])
p merge_sort([1,-2,10,-5,9,0,0,3,1,100])