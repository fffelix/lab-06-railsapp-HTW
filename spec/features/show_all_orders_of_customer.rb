require 'rails_helper'

describe "show all orders of a customers", :type => :feature do
  before :each do
    @customer = create(:customer_with_orders)
  end

  it "shows the customers orders" do
    visit "/customers/#{@customer.id}"
    expect(page).to have_content "#{3.days.ago.strftime('%F')}"
    expect(page).to have_content 'waiting'
  end

  it "displays the price of an order" do
    visit "/customers/#{@customer.id}"
    expect(page).to have_content "Price"
    expect(page).to have_content "628318.53"
  end

  it "shows the total of the customers orders" do
    visit "/customers/#{@customer.id}"
    expect(page).to have_content "Total:"
    expect(page).to have_content "3141592.65"
  end
end
