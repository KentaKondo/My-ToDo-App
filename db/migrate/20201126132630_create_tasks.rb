class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false
      t.string :title, null: false
      t.string :content, null: false
      t.date :limit_date
      t.timestamps
    end
  end
end

