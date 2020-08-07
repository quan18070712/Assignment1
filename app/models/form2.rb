class Form2 < ApplicationRecord
    belongs_to :user
    validates :company_name, presence: true, length: { maximum: 30 }
    validates :tax_code, presence: true, length: { maximum: 20 }
    validates :career, presence: true, length: { maximum: 20 }
    validates :work_decs, presence: true, length: { maximum: 50 }
end
