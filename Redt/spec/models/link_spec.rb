require 'spec_helper'


describe Link do
  subject(:Link){Link.new(
		link_url: 'Dash.com'
		user_id: 1
  	}) 
  it{ should validate_presence_of(:link_url)}
  it{ should validate_presence_of(:user_id)}
	it{ should validate_uniqueness_of(:link_url)}
  it{should belong_to(:user)} 
end
