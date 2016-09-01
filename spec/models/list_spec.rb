require 'rails_helper'

RSpec.describe List, type: :model do
  context "association" do
		
		it "has many reservations"  do
			assc = described_class.reflect_on_association(:reservations)
    		expect(assc.macro).to eq :has_many
		end
		it "belongs to user"  do
			assc = described_class.reflect_on_association(:user)
    		expect(assc.macro).to eq :belongs_to
		end
	end
end
