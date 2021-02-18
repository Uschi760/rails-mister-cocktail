class ChangeDecriptionToDescriptionInDoses < ActiveRecord::Migration[6.0]
  def change
    rename_column :doses, :decription, :description
  end
end
