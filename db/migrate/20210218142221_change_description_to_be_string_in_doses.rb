class ChangeDescriptionToBeStringInDoses < ActiveRecord::Migration[6.0]
  def change
    change_column :doses, :decription, :string
  end
end
