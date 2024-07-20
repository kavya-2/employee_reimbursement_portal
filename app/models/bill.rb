class Bill < ApplicationRecord
  belongs_to :employee

  validates :employee_id, presence: true
  validates :amount, presence: true
  validates :bill_type, presence: true
end