require 'rails_helper'


describe 'User can login' do 
	

	 scenario 'Valid users can login' do

	 	@user = User.create(:user_name => "john", :password => "john", :about => 'hi')

		visit '/'
		click_on "Sign In"
	   	
    	fill_in 'user_name', with: "john"
    	fill_in 'password', with: "john"

	   	click_on "sign_in"
		
		expect(page).to have_content("You are signed in") 
		expect(page).to have_content("Welcome john") 

	end 

end 
