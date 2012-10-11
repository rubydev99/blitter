require 'spec_helper'

describe "Static Pages" do

  let(:base_title) {'Blitter'}
  
  describe "Home Page" do  
    it "should have the content 'Blitter' " do 
      visit root_path
      page.should have_content('Blitter')
    end
    
    it "should have right title 'Home' " do
      visit root_path
      page.should have_selector('title', :text=>"#{base_title} | Home")
    end
    
  end
  
  
  describe "Help Pages" do
    it "should have the content 'Help Page'" do
      visit help_path
      page.should have_selector('h1', :text=>'Help Page')
    end
    
    it 'should have the right title for Help' do
      visit help_path
      page.should have_selector('title', :text=>"#{base_title} | Help")
    end
  end
  
  describe "About Pages" do
    it "should have the content 'About Us' " do
      visit about_path
      page.should have_content("About Us")
    end
    
    it "should have the correct title for About" do
      visit about_path
      page.should have_selector('title', :text=>"#{base_title} | About")
    end
  end
  
  describe "Contact Pages" do
    it "should have the correct title for Contact Us" do
      visit contact_path
      page.should have_selector('title', :text=>"#{base_title} | Contact Us")
    end
  end
  
end
