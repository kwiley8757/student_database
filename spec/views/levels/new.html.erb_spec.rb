require 'spec_helper'

describe "levels/new.html.erb" do
  before(:each) do
    assign(:level, stub_model(Level,
      :form_id => 1,
      :class => "MyString"
    ).as_new_record)
  end

  it "renders new level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => levels_path, :method => "post" do
      assert_select "input#level_form_id", :name => "level[form_id]"
      assert_select "input#level_class", :name => "level[class]"
    end
  end
end
