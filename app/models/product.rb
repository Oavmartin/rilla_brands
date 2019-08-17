class Product < ApplicationRecord
  # Direct associations

  belongs_to :productline,
             :counter_cache => true

  has_many   :productvariants

  # Indirect associations

  # Validations

end
