class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :bulletin, null: false, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
