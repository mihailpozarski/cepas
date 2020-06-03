class CreateAssemblies < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies do |t|
      t.float :percentage
      t.references :wine
      t.references :strain

      t.timestamps
    end
  end
end
