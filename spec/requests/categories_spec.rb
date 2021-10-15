require 'rails_helper'

RSpec.describe "Categories", type: :request do
 describe "GET index,  type: categories" do
    it "renders the index template" do
      get '/categories'
      expect(response).to render_template('index')
    end
  end
  
  describe 'POST categories#create' do
  it 'allows user to create a new category' do
    post :create, category: { product_name: product_name, product_size: "product_size", product_description: "product_description", product_in_strock: "" }
    expect(response).to have_http_status(:success)
  end
end
  # describe 'GET show' do
  #   it 'should show category' do
  #     get :show, { id: @category.to_param, template: 'categories/show' }
  #     expect(response).to render_template :show
  #   end
  # end

  # describe "#create" do
  #   it "creates a successful mesage category" do
  #     @category = Category.create(category: "category_name")
  #     @category.should be_an_instance_of Post
  #   end
  # end
end
