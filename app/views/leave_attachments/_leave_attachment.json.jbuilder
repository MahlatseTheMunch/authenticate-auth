json.extract! leave_attachment, :id, :leave_id, :filename, :attachment_link, :created_at, :updated_at
json.url leave_attachment_url(leave_attachment, format: :json)
