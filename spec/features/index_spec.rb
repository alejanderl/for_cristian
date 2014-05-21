#encoding: utf-8
require 'spec_helper'

describe "Testing Index Crawler"   do



  it "fill up the form and get a request with no results"  do

    visit root_path
    fill_in "wall_offer_uid", :with => "player1"
    fill_in "wall_offer_pub0", :with => "campaign1"
    fill_in "wall_offer_page", :with => "1"
    click_button "Request wall offers"

    page.should have_content "Results"
    page.should have_content "No offers"

  end

  pending "fill up the wall offer form and get results"

end