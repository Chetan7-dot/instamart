RSpec.describe 'Products', type: :request do

  describe "GET products#index" do
  it "renders 'index' template" do
    expect(response).to render_template('index')
  end
end

  describe "GET products#show" do
      it "should render products#show template" do
      end
  end
end