class List < ApplicationRecord
    has_many :selections
    has_many :books, through: :selections

    has_many :subscriptions
    has_many :users, through: :subscriptions
end
