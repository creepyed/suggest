require 'spec_helper'

describe "topics/show.html.erb" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("MyText".to_s)
  end
end
