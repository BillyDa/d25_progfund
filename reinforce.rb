ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

vote = {}
cat = []

ballots.each do |vote|
  vote.values.each do |v|
    cat << v
  end
end

cat.uniq!.each do |v|
  vote[v] = 0
end


ballots.each do |ballot|
  ballot.each do |k, v|
    if k == 1
      vote[v] += 1
    elsif k == 2
      vote[v] += 2
    elsif k == 3
      vote[v] += 3
    end
  end
end
#
# ballots.each do |ballot|
#   ballot.each do |k, v|
#     if k == 1
#       vote[v] += 1
#     elsif k == 2
#       vote[v] += 2
#     elsif k == 3
#       vote[v] += 3
#     end
#   end
# end



p vote
