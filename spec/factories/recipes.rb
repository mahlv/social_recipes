FactoryGirl.define do
  factory :recipe do
    name     "Bolo"
    cuisine  "Brasileira"
    food_type "Sobremesa"
    preferences "Diet"
    portions 10
    time 120
    difficulty "Fácil"
    ingredients "Açucar"
    instructions "misture tudo e leve ao forno"
  end
end
