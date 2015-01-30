require "rails_helper"

RSpec.describe WelcomeController, type: :routing do
	it 'routes to the index action' do
		expect(get('/welcome/index')).to route_to('welcome#index')
	end

	it 'routes the root path to the index action' do
		expect(get('/')).to route_to('welcome#index')
	end
end
