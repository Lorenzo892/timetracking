class AddDescriptionToProjets < ActiveRecord::Migration[5.0]
  def change
    add_column :projets, :description, :text
  end
end
