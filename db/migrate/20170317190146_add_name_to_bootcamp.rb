class AddNameToBootcamp < ActiveRecord::Migration[5.0]
  def change
    add_column :bootcamps, :name, :string
  end
end
