require File.dirname(__FILE__) + '/spec_helper.rb'

# Time to add your specs!
# http://rspec.info/
describe "Place your specs here" do
  
  it "should return object wrapper on fetch" do
    flaker = Flaker::Base.new
    flaker.fetch('type:user/login:dstranz/limit:2/source:photos/tag:bydgoszcz', {:source => 'photos'}).class == 'Flaker::ObjectWrapper'
  end
  
end
