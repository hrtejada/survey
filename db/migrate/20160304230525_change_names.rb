class ChangeNames < ActiveRecord::Migration
  def change
    rename_column :questions, :survey_id, :single_survey_id
  end
end
