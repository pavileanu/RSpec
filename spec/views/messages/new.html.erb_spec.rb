require 'rails_helper'

RSpec.describe "messages/new", :type => :view do
  before(:each) do
    assign(:message, Message.new(
      :text => "MyString",
      :title => "MyString",
    ))
  end

  it "renders new message form" do
   render
      assert_select "form[action=?][method=?]##{new_message_path}", "post" do
        assert_select "input#message_text[name=?]", "message[text]"
        assert_select "input#message_title[name=?]", "message[title]"
      end
  end
end
