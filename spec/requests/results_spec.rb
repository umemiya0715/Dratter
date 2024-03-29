require 'rails_helper'

RSpec.describe 'Results', type: :request do
  describe 'GET /api/v1/results/:id/previous_results' do
    let(:user) { create(:user, id: 23) }
    before do
      login_as(user)
      create_list(:result, 5, user_id: 23, dragon_id: 1)
      get "/api/v1/results/#{user.id}/previous_results"
    end
    it '200 OKを返す' do
      expect(response.status).to eq 200
    end
    it '5つ分の診断結果を返す' do
      expect(json.length).to eq 5
    end
  end

  describe 'GET /api/v1/results/:id/last_result' do
    let(:user) { create(:user, id: 23, screen_name: 'Quetzalcoatl') }
    before do
      login_as(user)
      create_list(:result, 5, user_id: 23, dragon_id: 1, screen_name: 'Quetzalcoatl')
      get "/api/v1/results/#{user.screen_name}/last_result"
    end
    it '200 OKを返す' do
      expect(response.status).to eq 200
    end
    it '最新の診断結果とその一つ前の診断結果を返す' do
      expect(json.length).to eq 2
    end
  end

  describe 'GET /api/v1/results/:id' do
    let!(:user) { create(:user, id: 23) }
    let!(:result) { create(:result, id: 666, user_id: 23, dragon_id: 1) }
    before do
      get "/api/v1/results/#{result.id}"
    end
    it '200 OKを返す' do
      expect(response.status).to eq 200
    end
    it '指定した診断結果を返す' do
      expect(json).to include({
        'id' => result.id,
        'user_id' => result.user_id,
        'dragon_id' => result.dragon_id,
        'score' => result.score,
        'magnitude' => result.magnitude,
        'troversion' => result.troversion,
        'target_account' => result.target_account,
        'screen_name' => result.screen_name
      })
    end
  end

  describe 'POST /api/v1/results' do
    let(:user) { create(:user, id: 1) }
    context 'ログイン中', vcr: { cassette_name: 'results' } do
      before do
        login_as(user)
      end
      it '201 Createdを返す' do
        post '/api/v1/results', params: {
          result: { target_account: '@Umesho0415', user_id: 1 }
        }
        expect(response.status).to eq 201
      end
    end
    context 'ログアウト中' do
      it '200 OKを返す' do
        post '/api/v1/results', params: {
          result: { target_account: '@Umesho0415', user_id: 0 }
        }
        expect(response.status).to eq 200
      end
    end
  end
end