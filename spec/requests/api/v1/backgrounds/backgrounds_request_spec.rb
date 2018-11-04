require 'rails_helper'

describe 'GET backgounds' do
  it 'visitor can get backgound images for a specific location' do

    VCR.use_cassette('background_get_request') do
      user_location = 'denver,co'
      get "/api/v1/backgrounds?location=#{user_location}"

      expect(response.status).to eq(200)

      returned_backgound = JSON.parse(response.body, symbolize_names: true)

      expect(returned_backgound).to be_a(Hash)
      expect(returned_backgound).to have_key(:data)
      expect(returned_backgound[:data]).to have_key(:id)
      expect(returned_backgound[:data][:id]).to eq(user_location)
      expect(returned_backgound[:data]).to have_key(:type)
      expect(returned_backgound[:data][:type]).to eq('backgound')
      expect(returned_backgound[:data]).to have_key(:attributes)
      expect(returned_backgound[:data][:attributes]).to have_key(:)
      expect(returned_backgound[:data][:attributes]).to have_key(:)
      expect(returned_backgound[:data][:attributes]).to have_key(:)
      expect(returned_backgound[:data][:attributes]).to have_key(:)
      expect(returned_backgound[:data][:attributes]).to have_key(:)
    end
  end
end
