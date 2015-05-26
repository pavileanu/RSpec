class Message < ActiveRecord::Base
  belongs_to :receiver, :class_name => "User"
  validates_presence_of :title, :text, :receiver
end
