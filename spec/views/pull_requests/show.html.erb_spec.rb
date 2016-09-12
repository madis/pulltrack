require 'rails_helper'

RSpec.describe "pull_requests/show", type: :view do
  before(:each) do
    @pull_request = assign(:pull_request, PullRequest.create!(
      :github_id => 2,
      :url => "Url",
      :number => 3,
      :state => "State",
      :title => "Title",
      :body => "Body",
      :assignee => "Assignee",
      :repo_name => "Repo Name",
      :repo_full_name => "Repo Full Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/Assignee/)
    expect(rendered).to match(/Repo Name/)
    expect(rendered).to match(/Repo Full Name/)
  end
end
