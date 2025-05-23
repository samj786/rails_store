require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with a name' do
    product = Product.new(name: "Skirts")
    expect(product).to be_valid
  end

  it 'is invalid without a name' do
    product = Product.new(name: nil)
    product.valid?
    expect(product.errors[:name]).to include("can't be blank")
  end
end
