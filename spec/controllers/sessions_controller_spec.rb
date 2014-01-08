require 'spec_helper'

describe SessionsController do
  before do
    @user = User.create(email: 'foobar@example.com')
    @user.ensure_authentication_token!
  end

  subject { @user }

  describe 'POST create with no params' do
    before { post :create }

    it 'should return 400' do
      response.response_code.should == 400
    end
  end
end
