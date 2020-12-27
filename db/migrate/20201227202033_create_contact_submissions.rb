class CreateContactSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_submissions do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :organization
      t.text :message

      t.timestamps
    end
  end
end
