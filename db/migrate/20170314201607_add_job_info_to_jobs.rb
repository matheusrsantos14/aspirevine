class AddJobInfoToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_info, :text
  end
end
