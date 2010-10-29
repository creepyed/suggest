require 'spec_helper'

describe "topics/index.html.erb" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Topic,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of topics" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
