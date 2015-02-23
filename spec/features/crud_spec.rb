require 'rails_helper'


describe 'User can CRUD' do 
	

	 scenario 'users can create a course' do

	 	@user = User.create(:user_name => "john", :password => "john", :about => 'hi')

		visit '/'
		click_on "Sign In"
	   	
    	fill_in 'user_name', with: "john"
    	fill_in 'password', with: "john"

	   	click_on "sign_in"

	   	click_on "Create course"

	   	fill_in 'course[title]', with: "Algebra"
	   	fill_in 'course[day_or_night]', with: "true"

	   	click_on 'Create Course'
	
		expect(page).to have_content("course was sussessfully created!") 

	end 
end 