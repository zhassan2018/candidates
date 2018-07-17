# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.each do |element|
  	if element[:id] == id
  		pp element
  	end
  end
  pp nil

end

def experienced?(candidate)
  # Your code Here
  if(candidate[:years_of_experience] >= 2)
  	pp true
  else
  	pp false
  end
end

def qualified_candidates(candidates)
  # Your code Here
  chosen = []
  candidates.each do |element|
  	if (element.years_of_experience >= 2 && element.github_points >= 100 && element.languages.include?('Ruby') &&  element.languages.include?('Python') && element.date_applied >= 15 && element.age > 17)
  		chosen.push(element)
  	end
  end
pp chosen

end

def ordered_by_qualifications(candidates)
	
	pp candidates.sort_by{ |v| [v[:years_of_experience], v[:github_points]]}
end