require 'spec_helper'

describe Admin::UsersController do
  let(:user) { create_user! }

  context "non-admin users" do
    before do
      sign_in(:user, user)
    end

    it "should not be able to access index action" do
      get 'index'
      response.should redirect_to(root_path)
      flash[:alert].should eql("You must be an admin to do that.")
    end
  end
end
