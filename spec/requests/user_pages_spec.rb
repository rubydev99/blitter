require 'spec_helper'

describe "UserPages" do
  let(:base_title) {'Blitter'}
  subject {page}
  describe "signup page" do
    before {visit signup_path}
      it {should have_selector('h1', text:'Sign Up')}
      it {should have_selector('title', text:("#{base_title} | Sign Up"))}
  end
end
