class Form1 < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: { maximum: 30 }
    validates :time, presence: true, length: { maximum: 20 }
    validates :job, presence: true, length: { maximum: 20 }
    validates :work_desc, presence: true, length: { maximum: 50 }
end