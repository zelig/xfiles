require 'spec_helper'

describe "xfiles/show" do
  before(:each) do
    @xfile = assign(:xfile, stub_model(Xfile,
      :name => "Name",
      :slug => "Slug",
      :text => "MyText",
      :html => "MyText",
      :markdown => false,
      :sticky => false,
      :position => 1,
      :secret => false,
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Slug/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/Tags/)
  end
end
