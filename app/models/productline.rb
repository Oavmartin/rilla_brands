class Productline < ApplicationRecord
  # Direct associations

  has_many   :products

  belongs_to :brand,
             :counter_cache => true

  # Indirect associations

  # Validations

end
