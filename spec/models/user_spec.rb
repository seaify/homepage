require 'rails_helper'

RSpec.describe User, type: :model do
  describe "test spree methods" do
    it "has has_spree_role? method" do
      user = create(:user)
      user.has_spree_role?("admin")
    end

  end
end
