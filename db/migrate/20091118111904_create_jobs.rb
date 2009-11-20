class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.integer :application_id
      t.datetime :started_at
      t.datetime :ended_at
      t.datetime :failed_at
      t.integer :attempts, :default => 0
      t.integer :priority
      t.string :handler
      t.integer :remote_id
      t.text :last_error

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
