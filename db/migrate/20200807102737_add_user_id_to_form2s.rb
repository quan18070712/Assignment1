class AddUserIdToForm2s < ActiveRecord::Migration[6.0]
  def change
    add_reference :form2s, :user, null: false, foreign_key: true
  end
end
