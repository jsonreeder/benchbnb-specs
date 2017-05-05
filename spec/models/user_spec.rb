require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    # Set subject in order to validate uniqueness
    subject { User.new(password: "password") }

    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:session_token) }
    it { should validate_uniqueness_of(:username) }
  end

  describe 'associations'
end