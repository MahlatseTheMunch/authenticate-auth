json.extract! voucher, :id, :employee_id, :description, :comment, :processed, :created_at, :updated_at
json.url voucher_url(voucher, format: :json)
