require 'rails_helper'

describe "Drink" do
  before :each do
    @user = create :user 
  end

  it "creates a drink" do
    @ingredient1 = create :ingredient, name: "Test Ingredient 1"
    @ingredient2 = create :ingredient, name: "Test Ingredient 2"
    @ingredient3 = create :ingredient, name: "Test Ingredient 3"
    
    login_as @user

    visit new_drink_path

    fill_in "Name", with: "Test Drink"
    fill_in "drink[drink_ingredients_attributes][0][amount]", with: 2
    select "oz", from: "drink[drink_ingredients_attributes][0][amount_unit]"
    select "Test Ingredient 1", from: "drink[drink_ingredients_attributes][0][ingredient_id]"
    fill_in "drink[drink_ingredients_attributes][1][amount]", with: 1
    select "oz", from: "drink[drink_ingredients_attributes][1][amount_unit]"
    select "Test Ingredient 2", from: "drink[drink_ingredients_attributes][1][ingredient_id]"
    fill_in "drink[drink_ingredients_attributes][2][amount]", with: 3
    select "dash", from: "drink[drink_ingredients_attributes][2][amount_unit]"
    select "Test Ingredient 3", from: "drink[drink_ingredients_attributes][2][ingredient_id]"

    click_button "Create Drink"

    page.should have_content "2 oz Test Ingredient 1"
    page.should have_content "1 oz Test Ingredient 2"
    page.should have_content "3 dashes Test Ingredient 3"
  end
end
