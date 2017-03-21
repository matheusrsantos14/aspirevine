class AddNameToEmployer < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :name, :string
  end
end
