#encoding: utf-8
require 'spec_helper'
describe "Testing Index Crawler"   do

 it "fill up the form and get a request with no results"  do
    visit root_path
    fill_in "q", :with => "http://www.amazon.com/gp/product/0465050654/ref=s9_psimh_gw_p14_d3_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=1Z4TWWMB46JZTNAH9DVN&pf_rd_t=101&pf_rd_p=1688200382&pf_rd_i=507846"
    click_button "Search"
    page.should have_content "The Design of Everyday Things: Revised and Expanded Edition"
    page.should have_content "978-0465050659"
    page.should have_content "0465050654"
    page.should have_content "Don Norman"

  end

  pending "what's wrong with the prices"
end