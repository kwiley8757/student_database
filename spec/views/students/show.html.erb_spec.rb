require 'spec_helper'

describe "students/show.html.erb" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "Name",
      :kelas => "Kelas",
      :food => "Food",
      :person => "Person",
      :notes => "Notes",
      :skill_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Kelas/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Food/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Person/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
