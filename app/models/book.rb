class Book < ApplicationRecord
      has_many :selections, dependent: :destroy
      has_many :lists, through: :selections
end
