class Approval < ApplicationRecord
  belongs_to :leave
  belongs_to :leave_type
  belongs_to :leave_status
  belongs_to :employee
end
