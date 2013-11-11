class CreatePickls < ActiveRecord::Migration
  def change
    create_table :pickls do |t|
      t.text :body
      t.timestamps
      t.integer :kudos, default: 0
    end
  end
end
