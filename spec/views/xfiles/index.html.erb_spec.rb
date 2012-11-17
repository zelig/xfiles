require 'spec_helper'

describe "xfiles/index" do
  before(:each) do
    assign(:xfiles, [
      stub_model(Xfile,
        :name => "Name",
        :slug => "Slug",
        :text => "MyText",
        :html => "MyText",
        :markdown => false,
        :sticky => false,
        :position => 1,
        :secret => false,
        :tags => "Tags"
      ),
      stub_model(Xfile,
        :name => "Name",
        :slug => "Slug",
        :text => "MyText",
        :html => "MyText",
        :markdown => false,
        :sticky => false,
        :position => 1,
        :secret => false,
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of xfiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
