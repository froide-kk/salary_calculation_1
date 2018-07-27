class Employee < ApplicationRecord
    belongs_to :result, :optional => true
    has_one :position_std_val
    has_one :evaluation_std_val
    has_one :task_std_val
    has_one :residence_std_val
    has_one :etc_std_val
end
