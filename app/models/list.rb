class List < ApplicationRecord
    has_many :selections
    has_many :books, through: :selections
end
