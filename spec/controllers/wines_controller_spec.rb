require 'rails_helper'

RSpec.describe WinesController, type: :controller do
  describe "GET index" do
    let(:strain) { Strain.create(name: 'cepa')}
    let(:wine) { Wine.new(name: 'test').assemblies.build(percentage: 100, strain: strain) }
    before do 
      allow(controller).to receive(:authenticate_user!).and_return(true)
      wine.save!
    end

    it "assigns @wines" do
      wine = Wine.all
      get :index
      expect(assigns(:wines)).to eq(wine)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
