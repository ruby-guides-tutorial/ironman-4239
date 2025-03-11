# require_relative '../src/05.rb'
require_relative '../src/05_ref.rb'

RSpec.describe Store do
  it 'have name' do
    store = Store.new 'Happy Store'
    expect(store.name).to eq 'Happy Store'
  end
  
  it 'sale product' do
    store = Store.new 'Happy Store'
    expect(store.sale).to eq 'Earn lots of money'
  end
end