require 'rails_helper'

RSpec.describe "pull_requests/index", type: :view do
  before(:each) do
    assign(:pull_requests, [
      PullRequest.create!(
        :github_id => 2,
        :url => "Url",
        :number => 3,
        :state => "State",
        :title => "Title",
        :body => "Body",
        :assignee => "Assignee",
        :repo_name => "Repo Name",
        :repo_full_name => "Repo Full Name"
      ),
      PullRequest.create!(
        :github_id => 2,
        :url => "Url",
        :number => 3,
        :state => "State",
        :title => "Title",
        :body => "Body",
        :assignee => "Assignee",
        :repo_name => "Repo Name",
        :repo_full_name => "Repo Full Name"
      )
    ])
  end

  it "renders a list of pull_requests" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => "Assignee".to_s, :count => 2
    assert_select "tr>td", :text => "Repo Name".to_s, :count => 2
    assert_select "tr>td", :text => "Repo Full Name".to_s, :count => 2
  end
end
