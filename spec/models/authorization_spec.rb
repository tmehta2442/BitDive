require 'spec_helper'

describe Authorization do
	let(:authorization) {Authorization.create(provider: "facebook", uid: 4562345, name: "Bart Simpson")}

		it {should belong_to(:user)}
		it {should validate_presence_of(:provider)}
		it {should validate_presence_of(:uid)}
		it {should validate_presence_of(:name)}
		it {should validate_uniqueness_of(:uid)}

end