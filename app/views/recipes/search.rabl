collection @recipes
attributes :id, :name, :servings
child(:steps) { attributes :id, :name }

