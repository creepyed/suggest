require 'spec_helper'

describe "topics/edit.html.erb" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :new_record? => false,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit topic form" do
    render

    rendered.should have_selector("form", :action => topic_path(@topic), :method => "post") do |form|
      form.should have_selector("input#topic_title", :name => "topic[title]")
      form.should have_selector("textarea#topic_description", :name => "topic[description]")
    end
  end
end
