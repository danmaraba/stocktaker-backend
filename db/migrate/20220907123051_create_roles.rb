class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :task
      t.integer :employee_id
      t.integer :product_id
    end
  end
end
