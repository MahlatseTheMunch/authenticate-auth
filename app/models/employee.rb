class Employee < ApplicationRecord
  belongs_to :line_manager
  belongs_to :region
end
