json.extract! employee, :id, :emp_id, :name, :age, :birth, :residence, :family, :department, :rank, :created_at, :updated_at
json.url employee_url(employee, format: :json)
