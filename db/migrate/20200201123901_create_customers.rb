class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customerName
      t.string :email, null: false, index: true, unique: true
      t.string :password_digest
      t.string :role, null: false, default: 'user'
      t.datetime :last_login
      t.string :contactName
      t.string :address
      t.string :city
      t.string :postalCode
      t.string :country
      

      t.timestamps
    end
  end
end
