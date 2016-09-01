require 'rails_helper'

RSpec.describe Authentication, type: :model do
  context "association" do
		
		it "belongs to user"  do
			assc = described_class.reflect_on_association(:user)
    		expect(assc.macro).to eq :belongs_to
		end
	end
end
