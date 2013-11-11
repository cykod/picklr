require "spec_helper"

describe PicklsController do
  render_views

  describe "#index" do

    context "signed out" do

      it "responds with 302" do
        get :index
        response.status.should == 302
        response.should redirect_to(new_user_session_path)
      end

    end

    context "signed in" do 

      let(:user) { FactoryGirl.create :user } 

      let!(:pickl1) { Pickl.create(body:"I'm the first pickl") }
      let!(:pickl2) { Pickl.create(body:"I'm the second pickl") }

      before { sign_in user }

      it "responds with 200" do
        get :index
        response.status.should == 200
      end


      it "renders the template" do
        get :index
        response.should render_template("index")
      end

      it "assigns the pickls" do
        get :index
        assigns(:pickls).should include(pickl1)
        assigns(:pickls).should include(pickl2)
      end

      it "renders the pickls on the page" do
        get :index
        response.body.should include(pickl1.body)
      end


    end

  end




end
