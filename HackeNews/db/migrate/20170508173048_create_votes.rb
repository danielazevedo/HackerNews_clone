class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :username
      t.integer :type
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
