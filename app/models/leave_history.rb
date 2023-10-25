class LeaveHistory < ApplicationRecord
  belongs_to :leave
  belongs_to :leave_status
end
