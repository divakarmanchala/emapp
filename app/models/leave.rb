class Leave < ApplicationRecord
  belongs_to :employee
  has_one :leave
end