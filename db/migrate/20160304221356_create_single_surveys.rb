class CreateSingleSurveys < ActiveRecord::Migration
  def change
    create_table :single_surveys do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
