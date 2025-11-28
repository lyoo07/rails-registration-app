class AddImpressionToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :impression, :text
  end
end
