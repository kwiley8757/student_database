require 'spec_helper'

describe "students/edit.html.erb" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "MyString",
      :kelas => "MyString",
      :food => "MyString",
      :person => "MyString",
      :notes => "MyString",
      :skill_id => 1
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path(@student), :method => "post" do
      assert_select "input#student_name", :name => "student[name]"
      assert_select "input#student_kelas", :name => "student[kelas]"
      assert_select "input#student_food", :name => "student[food]"
      assert_select "input#student_person", :name => "student[person]"
      assert_select "input#student_notes", :name => "student[notes]"
      assert_select "input#student_skill_id", :name => "student[skill_id]"
    end
  end
end
