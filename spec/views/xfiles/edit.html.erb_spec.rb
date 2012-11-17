require 'spec_helper'

describe "xfiles/edit" do
  before(:each) do
    @xfile = assign(:xfile, stub_model(Xfile,
      :name => "MyString",
      :slug => "MyString",
      :text => "MyText",
      :html => "MyText",
      :markdown => false,
      :sticky => false,
      :position => 1,
      :secret => false,
      :tags => "MyString"
    ))
  end

  it "renders the edit xfile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => xfiles_path(@xfile), :method => "post" do
      assert_select "input#xfile_name", :name => "xfile[name]"
      assert_select "input#xfile_slug", :name => "xfile[slug]"
      assert_select "textarea#xfile_text", :name => "xfile[text]"
      assert_select "textarea#xfile_html", :name => "xfile[html]"
      assert_select "input#xfile_markdown", :name => "xfile[markdown]"
      assert_select "input#xfile_sticky", :name => "xfile[sticky]"
      assert_select "input#xfile_position", :name => "xfile[position]"
      assert_select "input#xfile_secret", :name => "xfile[secret]"
      assert_select "input#xfile_tags", :name => "xfile[tags]"
    end
  end
end
