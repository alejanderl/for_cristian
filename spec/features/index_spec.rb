#encoding: utf-8
require 'spec_helper'

describe "Testing form"   do



  it "fill up the form and get a proper request" , :js do

    visit root_path
    fill_in "amazon_url", :with => "http://www.amazon.com/gp/product/0465050654/ref=s9_psimh_gw_p14_d3_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=1Z4TWWMB46JZTNAH9DVN&pf_rd_t=101&pf_rd_p=1688200382&pf_rd_i=507846"


  end

  pending "another feature"

end