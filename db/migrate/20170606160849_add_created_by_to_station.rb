class AddCreatedByToStation < ActiveRecord::Migration[5.1]
  def change
    add_column :stations, :created_by, :string
  end
end
