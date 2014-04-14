class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :name
      t.boolean :read
      t.string :effort
      t.string :assigned_to
      t.datetime :created_at
      t.datetime :due_date

      t.timestamps
    end
  end
end
