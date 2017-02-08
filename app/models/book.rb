class Book < ApplicationRecord
      has_many :selections
      has_many :lists, through: :selections
end
