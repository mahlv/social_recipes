require 'rails_helper'
feature 'user create recipes' do
  scenario 'succesfully' do

    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'Nome',                   with: recipe.name
    fill_in 'Cozinhas',               with: recipe.cuisine
    fill_in 'Tipo de comida',         with: recipe.food_type
    fill_in 'Preferências de comida', with: recipe.preferences
    fill_in 'Porções',                with: recipe.portions
    fill_in 'Tempo de preparo',       with: recipe.time
    choose recipe.difficulty
    fill_in 'Ingredientes',           with: recipe.ingredients
    fill_in 'Passo a Passo',           with: recipe.instructions

    click_on 'Criar receita'

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.cuisine
    expect(page).to have_content recipe.food_type
    expect(page).to have_content recipe.preferences
    expect(page).to have_content recipe.portions
    expect(page).to have_content recipe.time
    expect(page).to have_content recipe.difficulty
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.instructions
  end

  scenario 'fields missing' do

    visit new_recipe_path

    click_on 'Criar receita'

    expect(page).to have_content 'Nome é obrigatório'
    expect(page).to have_content 'Cozinha é obrigatório'
    expect(page).to have_content 'Tipo é obrigatório'
    expect(page).to have_content 'Preferências é obrigatório'
    expect(page).to have_content 'Ingredientes é obrigatório'
    expect(page).to have_content 'Passo a Passo é obrigatório'
  end
end
