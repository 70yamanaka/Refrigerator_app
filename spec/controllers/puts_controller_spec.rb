require 'rails_helper'

describe PutsController, type: :controller do

  describe 'GET #new' do
    it "new.html.hamlに遷移するか" do
      get :new
      expect(response).to render_template :new
    end
  end
end