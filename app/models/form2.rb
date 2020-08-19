class Form2 < ApplicationRecord
  belongs_to :user
  validates :company_name, presence: true, length: { maximum: 30 }
  validates :tax_code, presence: true, length: { maximum: 20 }
  validates :career, presence: true, length: { maximum: 20 }
  validates :work_decs, presence: true, length: { maximum: 50 }

  def self.as_csv
    CSV.generate("\uFEFF") do |csv|
      columns = %w(company_name tax_code address name career date work_decs income)
      csv << columns.map(&:humanize)
      all.each do |form2|
        csv << form2.attributes.values_at(*columns)
      end
    end
  end
end
