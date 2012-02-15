require 'spec_helper'

describe "forms/index.html.erb" do
  before(:each) do
    assign(:forms, [
      stub_model(Form,
        :grade => "Grade"
      ),
      stub_model(Form,
        :grade => "Grade"
      )
    ])
  end

  it "renders a list of forms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
  end
end
