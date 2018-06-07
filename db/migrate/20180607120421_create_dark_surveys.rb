class CreateDarkSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :dark_surveys do |t|
      t.belongs_to :user, foreign_key: true
      t.boolean :is_it_dark
      t.boolean :are_you_afraid
      t.text :afraid_of_what
      t.timestamps
    end
  end
end
