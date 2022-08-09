require 'spec_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryBot.build(:user) }

  subject { @user }

  it { expect respond_to(:email) }
  it { expect respond_to(:password) }
  it { expect respond_to(:password_confirmation) }
  it { expect respond_to(:auth_token) }

  it { expect be_valid }

  it { expect validate_presence_of(:email) }
  it { expect validate_uniqueness_of(:email).case_insensitive }
  it { expect validate_confirmation_of(:password) }
  it { expect allow_value('example@domain.com').for(:email) }
  it { expect validate_uniqueness_of(:auth_token)}

  describe "#generate_authentication_token!" do
    it "generates a unique token" do
      Devise.stub(:friendly_token).and_return("auniquetoken123")
      @user.generate_authentication_token!
      expect(@user.auth_token).to eql "auniquetoken123"
    end

    it "generates another token when one already has been taken" do
      existing_user = FactoryBot.create(:user, auth_token: "auniquetoken123")
      @user.generate_authentication_token!
      expect(@user.auth_token).not_to eql existing_user.auth_token
    end
  end
end
