require 'spec_helper'

describe "levels/index.html.erb" do
  before(:each) do
    assign(:levels, [
      stub_model(Level,
        :form_id => 1,
        :class => "Class"
      ),
      stub_model(Level,
        :form_id => 1,
        :class => "Class"
      )
    ])
  end

  it "renders a list of levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Class".to_s, :count => 2
  end
end
