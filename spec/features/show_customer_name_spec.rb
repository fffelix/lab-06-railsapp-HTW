require 'rails_helper'

describe "show customers name in order", :type => :feature do
  before :each do
    @order = create(:order1)
  end

  it "shows the customers name" do
    visit "/orders/#{@order.id}"
    expect(page).to have_content 'Track'
  end
end
