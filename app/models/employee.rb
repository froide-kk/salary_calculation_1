class Employee < ApplicationRecord
    belongs_to :results, :optional => true
end
