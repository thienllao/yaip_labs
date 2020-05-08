class CreateNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :numbers do |t|
      t.text :input
      t.text :output

      t.timestamps
    end
  end
end
