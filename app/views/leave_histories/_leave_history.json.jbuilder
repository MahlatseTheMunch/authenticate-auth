json.extract! leave_history, :id, :description, :comment, :leave_id, :leave_status_id, :created_at, :updated_at
json.url leave_history_url(leave_history, format: :json)
