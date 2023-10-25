json.extract! employee, :id, :name, :surname, :email, :hired_date, :birthday, :line_manager_id, :password, :region_id, :isAdmin, :isActive, :created_at, :updated_at
json.url employee_url(employee, format: :json)
