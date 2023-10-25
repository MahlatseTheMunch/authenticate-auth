class CategoryValue < ApplicationRecord
  belongs_to :category
  belongs_to :value
  belongs_to :skhokho
end
