class Point < ApplicationRecord
    belongs_to :employee, :optional => true #, foreign_key: "emp_id"
end
