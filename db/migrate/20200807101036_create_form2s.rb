class CreateForm2s < ActiveRecord::Migration[6.0]
  def change
    create_table :form2s do |t|
      t.string :company_name
      t.string :tax_code
      t.string :address
      t.string :name
      t.string :career
      t.date :date
      t.string :work_decs
      t.integer :income
      t.string :note

      t.timestamps
    end
  end
end
