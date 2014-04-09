require 'spec_helper'

describe User do
  subject(:User){User.new({
		name: 'Dame',
  	email: 'Dash@dash.com',
  	password_digest: 'dash'
  	})} 
  it{ should validate_presence_of(:name)}
  it{ should validate_presence_of(:email)}
	it{ should validate_presence_of(:password_digest)}
  it{should have_many(:links)} 
end
