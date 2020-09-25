class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :school_id
      t.integer :department_id
      t.string :sex

      t.timestamps
    end
  end
end
