require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET index,  type: :categories" do
    it "renders the index template" do
      get '/categories'
      expect(response).to render_template('index')
    end
  end
end
