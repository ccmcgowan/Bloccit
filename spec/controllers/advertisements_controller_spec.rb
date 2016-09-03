require 'rails_helper'
include RandomData

RSpec.describe AdvertisementsController, type: :controller do
  let(:my_ad) { Advertisement.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_number) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_ad] to @advertisements" do
      get :index
      expect(assigns(:advertisements)).to eq([my_ad])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_ad.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_ad.id}
      expect(response).to render_template :show
    end

    it "assigns my_ad to @advertisement" do
      get :show, {id: my_ad.id}
      expect(assigns(:advertisement)).to eq(my_ad)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @advertisement" do
      get :new
      expect(assigns(:advertisement)).not_to be_nil
    end
  end

  describe "POST #create" do
    it "redirect to the show page for the newly created advertisement" do
      post(:create, {advertisement: {title: 'an advertisement', body: 'blahblahlablhabla', price: '15'}})
      expect(response).to redirect_to(Advertisement.last)
      # expect(response).to redirect_to(advertisement_path(Advertisement.last))
      # expect(response).to redirect_to(advertisement_path(Advertisement.last.id))
      # expect(response).to redirect_to("/advertisemnts/#{Advertisement.last.id}")
    end

    it "creates an advertisement" do
      original_count = Advertisement.count
      post(:create, {advertisement: {title: 'an advertisement', body: 'blahblahlablhabla', price: '15'}})
      final_count = Advertisement.count
      expect(final_count).to eq(original_count + 1)
    end

    # it "increases the number of Advertisemnts by 1" do
    #   expect do
    #     post :create, advertisement: {title: 'an advertisement', body: 'blahblahlablhabla', price: '15'}})
    #   end.to change{ Advertisement.count }.by(1)
    # end
  end
end
