require 'factory_bot'

FactoryBot.define do
  factory :backpack do

    #Don't know about this V
    # weather "sunny"
    # day_of_week "monday"

    #just here so the initializer can behave like a rails model
    initialize_with { new(attributes) }
  end
end
