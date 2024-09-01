require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/attacks", type: :request do
  fixtures :attacks

  let(:valid_attributes) {
    attacks(:one).attributes.except("id")
  }

  let(:invalid_attributes) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Attack.create! valid_attributes
      get attacks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      attack = Attack.create! valid_attributes
      get attack_url(attack)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_attack_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    include Warden::Test::Helpers

    before do
      login_as({ uid: '123', nickname: 'test', image: 'test', profile_url: 'test' })
    end

    it "renders a successful response" do
      attack = Attack.create! valid_attributes
      get edit_attack_url(attack)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Attack" do
        expect {
          post attacks_url, params: { attack: valid_attributes }
        }.to change(Attack, :count).by(1)
      end

      it "redirects to the created attack" do
        post attacks_url, params: { attack: valid_attributes }
        expect(response).to redirect_to(attack_url(Attack.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Attack" do
        expect {
          post attacks_url, params: { attack: invalid_attributes }
        }.to change(Attack, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        pending 'TODO: maybe implement later'
        post attacks_url, params: { attack: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested attack" do
        attack = Attack.create! valid_attributes
        patch attack_url(attack), params: { attack: new_attributes }
        attack.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the attack" do
        attack = Attack.create! valid_attributes
        patch attack_url(attack), params: { attack: new_attributes }
        attack.reload
        expect(response).to redirect_to(attack_url(attack))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        pending 'TODO: maybe implement later'
        attack = Attack.create! valid_attributes
        patch attack_url(attack), params: { attack: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested attack" do
      attack = Attack.create! valid_attributes
      expect {
        delete attack_url(attack)
      }.to change(Attack, :count).by(-1)
    end

    it "redirects to the attacks list" do
      attack = Attack.create! valid_attributes
      delete attack_url(attack)
      expect(response).to redirect_to(attacks_url)
    end
  end
end
