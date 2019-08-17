class Brand < ApplicationRecord
  # Direct associations

  belongs_to :organization,
             :required => false,
             :counter_cache => true

  has_many   :productlines

  # Indirect associations

  # Validations

end
