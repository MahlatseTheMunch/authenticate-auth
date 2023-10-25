class LeaveAccrual < ApplicationRecord
  belongs_to :employee
  belongs_to :period_type
  belongs_to :leave_type
end
