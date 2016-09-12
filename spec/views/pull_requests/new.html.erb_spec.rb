require 'rails_helper'

RSpec.describe "pull_requests/new", type: :view do
  before(:each) do
    assign(:pull_request, PullRequest.new(
      :github_id => 1,
      :url => "MyString",
      :number => 1,
      :state => "MyString",
      :title => "MyString",
      :body => "MyString",
      :assignee => "MyString",
      :repo_name => "MyString",
      :repo_full_name => "MyString"
    ))
  end

  it "renders new pull_request form" do
    render

    assert_select "form[action=?][method=?]", pull_requests_path, "post" do

      assert_select "input#pull_request_github_id[name=?]", "pull_request[github_id]"

      assert_select "input#pull_request_url[name=?]", "pull_request[url]"

      assert_select "input#pull_request_number[name=?]", "pull_request[number]"

      assert_select "input#pull_request_state[name=?]", "pull_request[state]"

      assert_select "input#pull_request_title[name=?]", "pull_request[title]"

      assert_select "input#pull_request_body[name=?]", "pull_request[body]"

      assert_select "input#pull_request_assignee[name=?]", "pull_request[assignee]"

      assert_select "input#pull_request_repo_name[name=?]", "pull_request[repo_name]"

      assert_select "input#pull_request_repo_full_name[name=?]", "pull_request[repo_full_name]"
    end
  end
end
