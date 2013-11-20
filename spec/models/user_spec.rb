require 'spec_helper'

describe User do
  let(:user) {User.create(name:'richard yang', email:'elyrly@gmail.com', user_id:123)}

  it { should have_many(:scubas)}
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:email)}
  it { should validate_presence_of(:user_id)}


end