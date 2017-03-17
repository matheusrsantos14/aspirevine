class AddInfoToBootcamps < ActiveRecord::Migration[5.0]
  def change
    add_column :bootcamps, :description, :text
    add_column :bootcamps, :location, :string
  end
end
