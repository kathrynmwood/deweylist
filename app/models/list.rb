class List < ApplicationRecord
    has_many :selections, dependent: :destroy
    has_many :books, through: :selections

    has_many :subscriptions, dependent: :destroy
    has_many :users, through: :subscriptions
end
