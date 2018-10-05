require 'pry'
def begins_with_r(array)
	r_elements = []
	array.each do |element|
		if element[0] == "r"
			r_elements.push(element)
		end
	end
	if r_elements.size == array.size
		return true
	else
		return false
	end
end

def contain_a(array)
	array.select do |element|
		element.include?("a")
	end
end

def first_wa(array)
	array.find do |element|
		element[0] == "w" && element[1] == "a"
	end
end

def remove_non_strings(array)
	array.delete_if do |element|
		!element.instance_of?(String)
	end
end

def count_elements(array)
	#binding.pry
	variable = array.each do |people|
		people[:count] = 0
		name = people[:name]
		array.each do |hash|
			if hash[:name] == name
				people[:count] += 1
			end
		end 
	end
variable.uniq
end

def merge_data(data_1, data_2)
	#binding.pry
	new_array = []
	data_1.each do |hash|
		name = hash[:first_name]
		data_2.each do |hash_2|
			if hash_2[name]
				merged_hash = hash_2[name]
				merged_hash[:first_name] = name
				new_array << merged_hash
			end
		end
	end
new_array	
end

def find_cool(array)
	cool_array = []
	array.each_with_index do |person_stats, index|
		person_stats.each do |stat, value|
			cool_array << person_stats if value == "cool"
		end
	end
	cool_array
end

def organize_schools(schools)
	organized_schools = {}
	schools.each do |school, loaction_hash|
		loaction_hash.each do |the_location, name_of_location|
			if !organized_schools[name_of_location]
				organized_schools[name_of_location] = []
			end
			organized_schools[name_of_location] << school
		end
	end
organized_schools
end