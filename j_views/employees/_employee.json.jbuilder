json.extract! employee, :id, :emp_id, :name, :birth, :age, :judgment, :department, :task, :residence, :fam_spouse, :fam_except_spouse, :position, :created_at, :updated_at
json.url employee_url(employee, format: :json)
