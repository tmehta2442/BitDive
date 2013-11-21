require 'spec_helper'

describe Scuba do
  let(:scuba) {Scuba.create(dive_num: 2, date:2/2/1980, location:"Santa Barbara", time_in: "10:30pm", time_out: "10:45pm", temperature:"80F", visability:"none", environment:"wet", conditions:"bad", protection:"none", comments: "none", user_id:1)}

  it {should belong_to(:user)}
  it {should validate_presence_of(:dive_num)}
  it {should validate_presence_of(:date)}
  it {should validate_presence_of(:location)}
  it {should validate_presence_of(:time_in)}
  it {should validate_presence_of(:time_out)}
  it {should validate_presence_of(:temperature)}
  it {should validate_presence_of(:visability)}
  it {should validate_presence_of(:environment)}
  it {should validate_presence_of(:conditions)}
  it {should validate_presence_of(:protection)}
  it {should validate_presence_of(:comments)}
  it {should validate_presence_of(:user_id)}

end