namespace :friendly_id do
  desc "Seed up drink friendly IDs"
  task seed_drinks: :environment do
    Drink.find_each(&:save)
  end

end
