require 'spec_helper'

describe "Static Pages" do

  let(:base_title) {'Blitter'}
  
  describe "Home Page" do  
    it "should have the content 'Sample App' " do 
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
    it "should have right title 'Home' " do
      visit '/static_pages/home'
      page.should have_selector('title', :text=>"#{base_title} | Home")
    end
    
  end
  
  
  describe "Help Pages" do
    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=>'Help Page')
    end
    
    it 'should have the right title for Help' do
      visit "/static_pages/help"
      page.should have_selector('title', :text=>"#{base_title} | Help")
    end
  end
  
  describe "About Pages" do
    it "should have the content 'About Us' " do
      visit "/static_pages/about"
      page.should have_content("About Us")
    end
    
    it "should have the correct title for About" do
      visit "/static_pages/about"
      page.should have_selector('title', :text=>"#{base_title} | About")
    end
  end
  
  describe "Contact Pages" do
    it "should have the correct title for Contact Us" do
      visit "/static_pages/contact"
      page.should have_selector('title', :text=>"#{base_title} | Contact Us")
    end
  end
  
end
