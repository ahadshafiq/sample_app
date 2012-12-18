require 'spec_helper'

describe "LayoutLinks" do

	it "shoud have a Home page at '/'" do
		get '/'
		response.should hav_selector('title', :content => "Home")
	end

	it "should have a Contact pages at '/contact" do
		get '/contact'
		response.should have_selector('title', :content => "Contact")
	end

	it "should have an ABout page at '/about" do
		get '/about'
		response.should have_selector('about', :content => "About")
	end

	it "should have a Help page at '/help'" do
		get '/help'
		response.should have_selector('title', :content => "Help")
	end

	it "should have a Signup page at '/signup'" do
		get '/signup'
		response.should have_selector('title', :content => "Sign up")
	end

	it "should have the right links on the layout'" do
		visit root_path
		response.should have_selector('title', :content => "Home")
		click_link "About"
		response.should have_selector('title', :content => "About")
		click_link "Contact"
		response.should have_selector('title', :conten => "Contact")
		click_link "Home"
		response.should have_selector('title', :conten => "Home")
		click_link "Sign up now!"
		response.should have_selector('title', :conten => "Sign up")

		response.should have_selector ('a[href="/"]>img')#the > means that inside the a tag there is an img tag...
		#so not only is there a link to the root path but also an image inside it
	end


end
