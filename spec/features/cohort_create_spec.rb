describe "cohort" do 
  context 'when everything is valid', :js => true  do   
    it "creates a cohort" do
      visit "/"
      fill_in "Name", :with => "web-0915"
      attach_file("Roster csv", "#{Rails.root}/spec/helper_files/students.csv")
      click_on("Create Cohort")

      expect(page).to have_content("web-0915")
    end
  end
end