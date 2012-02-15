require 'spec_helper'

describe "levels/edit.html.erb" do
  before(:each) do
    @level = assign(:level, stub_model(Level,
      :form_id => 1,
      :class => "MyString"
    ))
  end

  it "renders the edit level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => levels_path(@level), :method => "post" do
      assert_select "input#level_form_id", :name => "level[form_id]"
      assert_select "input#level_class", :name => "level[class]"
    end
  end
end
