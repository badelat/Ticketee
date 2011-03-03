Given /^"([^"]*)" has created a ticket for this project:$/ do |email, table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes.merge!(:user => User.find_by_email(email)))
  end
end
