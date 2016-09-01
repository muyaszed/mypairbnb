require 'rails_helper'


RSpec.describe User, type: :model do
	context "association" do
		it "has many authentications" do
			assc = described_class.reflect_on_association(:authentications)
    		expect(assc.macro).to eq :has_many
		end
		it "has many lists"  do
			assc = described_class.reflect_on_association(:lists)
    		expect(assc.macro).to eq :has_many
		end
		it "has many reservations"  do
			assc = described_class.reflect_on_association(:reservations)
    		expect(assc.macro).to eq :has_many
		end
	end

	
end
