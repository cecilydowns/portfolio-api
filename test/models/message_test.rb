class MessageTest < ActiveSupport::TestCase

  test 'responds to name, email and message' do 
    msg = Message.new

    assert msg.respond_to?(:name),  'does not respond to :name'
    assert msg.respond_to?(:email), 'does not respond to :email'
    assert msg.respond_to?(:message),  'does not respond to :message'
  end
end