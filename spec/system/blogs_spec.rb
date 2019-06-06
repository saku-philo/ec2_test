require 'rails_helper'

describe 'ブログ表示機能', type: :system do
  describe '一覧表示機能' do
    before do
      # ブログAを作成する
      blog_a = FactoryBot.create(:blog, title: 'タイトルA')
    end

    it 'ブログが表示される' do
      # 作成したブログが表示される
      visit root_path
      expect(page).to have_content 'タイトルA'
    end
  end
end