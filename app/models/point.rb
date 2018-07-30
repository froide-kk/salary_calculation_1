class Point < ApplicationRecord
    belongs_to :employee, :optional => true
end
