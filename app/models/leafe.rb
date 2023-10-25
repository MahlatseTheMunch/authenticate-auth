class Leafe < ApplicationRecord
  belongs_to :leave_type
  belongs_to :employee
  belongs_to :leave_status
  belongs_to :allocation_type
end
