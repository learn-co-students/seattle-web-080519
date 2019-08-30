require "spec_helper"

describe "Users Controller" do

    # want to be able to view the login page

    # want the login page to have a form with an input field for a name

    # want the login page to have a form with an input field for a password
    
    # want the form to have a clickable submit button

    # want the form to have a redirect if user select "Sign Up!"

    # let's take a look at available RSPEC & Capybara 'macros'


        it "can visit '/login'" do
            get '/login'
            expect(last_response.status).to eq(200)
        end

        it "'/login' has a input field for name" do
            visit '/login'
            expect(page).to have_field('name')
        end

        it "'/login' has a input field for password" do
            visit '/login'
            expect(page).to have_field('password')
        end

        it "'/login' allows a user to login on form submission" do
            visit '/login'
            fill_in('name', :with => 'Jane')
            fill_in('password', :with => 'idk what this is going to do')
            find_button('submit').click
        end

        it "'/login' has input field" do
            visit '/login'
            within('label#name') do
                expect(page).to have_content("Your Name:") 
            end
        end

        it "'/login' will route to '/signup' if selected" do
            visit '/login'
            # fill_in('name', :with => 'Jane')
            # fill_in('password', :with => 'idk what this is going to do')
            click_link('Sign Up!')
            expect(page.current_path).to eq('/signup')
        end

end