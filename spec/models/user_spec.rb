require 'rails_helper'
describe User do
  describe '#create' do

    # nickname, email, passwordがあれば登録できる
    it "nickname, email, passwordがあれば登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end

    # ニックネームがなければ登録できない
    it "ニックネームがなければ登録できない" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    # emailがなければ登録できない
    it "emailがなければ登録できない" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    # 重複したemailが存在する場合登録できない
    it "重複したemailが存在する場合登録できない" do
      #はじめにユーザーを登録
      user = create(:user)
      #先に登録したユーザーと同じemailの値を持つユーザーのインスタンスを作成
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    # passwordがなければ登録できない
    it "passwordがなければ登録できない" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    # passwordが6文字以上であれば登録できる
    it "passwordが6文字以上であれば登録できる" do
      user = build(:user)
    user.valid?
    expect(user).to be_valid
    end

    # passwordが5文字以下であれば登録できない
    it "passwordが5文字以下であれば登録できない" do
      user = build(:user, password:"123e5")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end

  end
end