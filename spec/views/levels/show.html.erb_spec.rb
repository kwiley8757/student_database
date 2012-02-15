require 'spec_helper'

describe "levels/show.html.erb" do
  before(:each) do
    @level = assign(:level, stub_model(Level,
      :form_id => 1,
      :class => "Class"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Class/)
  end
end
