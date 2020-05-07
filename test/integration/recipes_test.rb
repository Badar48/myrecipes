require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
 test "should get recipes index" do
  get recipes_url
  assert_response :success
end
test "should get recipes show" do
  get recipe_path(@recipe)
  assert_template 'recipes/show'
  assert_match @recipe.name, response.body
  assert_match @recipe.description, response.body
  assert_match @chef.chefname, response.body
end
end
