class CreatePullRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :pull_requests do |t|
      t.integer :github_id
      t.string :url
      t.integer :number
      t.string :state
      t.string :title
      t.string :body
      t.string :assignee
      t.string :repo_name
      t.string :repo_full_name

      t.timestamps
    end
  end
end
