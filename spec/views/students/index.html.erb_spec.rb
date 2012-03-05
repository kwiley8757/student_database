require 'spec_helper'

describe "students/index.html.erb" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :name => "Name",
        :kelas => "Kelas",
        :food => "Food",
        :person => "Person",
        :notes => "Notes",
        :skill_id => 1
      ),
      stub_model(Student,
        :name => "Name",
        :kelas => "Kelas",
        :food => "Food",
        :person => "Person",
        :notes => "Notes",
        :skill_id => 1
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kelas".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Food".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
