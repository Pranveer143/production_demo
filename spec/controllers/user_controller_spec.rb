require "rails_helper"

RSpec.describe UsersController, :type => :controller do
  before(:each) do
    if User.any?
      @user=User.first
    else
      @user = User.create(title: "testing", upload: "xyzibm")
  end
end
  describe "GET index" do
    it "has a 200 status code" do
      get :index, params: {title: 'testing', upload: "xyzibm"}, xhr: true
      expect(response.status).to eq(200)
    end
  end
  describe "GET create" do
    it "has a 200 status code" do
      post :create, params: {:user=>{title: @user.title, upload: @user.upload}}, xhr: true
      expect(response.status).to eq(200)
    end
  end
  describe "GET New" do
    it "has a 200 status code" do
      post :new, params: {:user=>{title: @user.title, upload: @user.upload}}, xhr: true
      expect(response.status).to eq(200)
    end
  end
  # describe "put update" do
  #   it "has a 200 status code" do
  #     put :update, id: @user.id , user: {title: "12testing", upload: "abcd"}
  #     expect(response.status).to eq(200)
  #   end
  # end

end