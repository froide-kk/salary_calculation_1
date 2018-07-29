class Salary < ApplicationRecord
    belongs_to :employee, :optional => true
end
