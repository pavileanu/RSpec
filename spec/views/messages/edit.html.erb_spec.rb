require 'rails_helper'

RSpec.describe "messages/edit", :type => :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :text => "MyString",
      :title => "MyString",
    ))
  end

  it "renders the edit message form" do
    render
      assert_select "form[action=?][method=?]##{message_path(@message)}", "post" do
        assert_select "input#message_text[name=?]", "message[text]"
        assert_select "input#message_title[name=?]", "message[title]"
      end
=begin
    rendered.should have_selector("form", :method => "post", :action => message_path(@message)) do |form|
      form.should have_selector("input",
        :type => "text",
        :name => "message[title]",
        :value => "MyString"
        )
=end
  end
end
