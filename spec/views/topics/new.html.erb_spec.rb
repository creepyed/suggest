require 'spec_helper'

describe "topics/new.html.erb" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :new_record? => true,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new topic form" do
    render

    rendered.should have_selector("form", :action => topics_path, :method => "post") do |form|
      form.should have_selector("input#topic_title", :name => "topic[title]")
      form.should have_selector("textarea#topic_description", :name => "topic[description]")
    end
  end
end
