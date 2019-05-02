require 'rails_helper'

describe Special, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should belong_to :comedian }
  end
end
