json.array!(@user_recipes) do |user_recipe|
  json.extract! user_recipe, :id, :name, :description
  json.url user_recipe_url(user_recipe, format: :json)
end
