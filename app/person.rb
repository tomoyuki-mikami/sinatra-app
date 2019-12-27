require 'dry-validation'

class Person < Dry::Validation::Contract
  params do
    required(:name).filled(:string, max_size?: 10)
    required(:age).filled(:integer)
  end
end