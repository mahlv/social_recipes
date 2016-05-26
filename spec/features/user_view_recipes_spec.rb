require 'rails_helper'
feature 'user view all recipes' do
  scenario 'on home page' do

    recipe = create(:recipe)
    other_recipe = create(:recipe, name: 'Churrasco', food_type: 'Prato Principal')

    visit root_path

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.preferences
    expect(page).to have_content recipe.food_type
    expect(page).not_to have_content recipe.instructions
    expect(page).not_to have_content recipe.ingredients

    expect(page).to have_content other_recipe.name
    expect(page).to have_content other_recipe.preferences
    expect(page).to have_content other_recipe.food_type
    expect(page).not_to have_content other_recipe.instructions
    expect(page).not_to have_content other_recipe.ingredients
  end

  scenario 'and navigate to recipe details' do

    recipe = create(:recipe)

    visit root_path

    click_on recipe.name

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.preferences
    expect(page).to have_content recipe.food_type
    expect(page).to have_content recipe.instructions
    expect(page).to have_content recipe.ingredients
  end
end
