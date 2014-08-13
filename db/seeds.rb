%w{Pizza Pasta}.each do |r|
  Recipe.new(name: r, servings: 1).save!
end

Recipe.all.each do |r|
  Step.new(name: "step #{r.id}", recipe: r).save!
end
