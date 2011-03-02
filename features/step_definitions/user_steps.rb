Given /^there are the following users:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed")
    @user = User.create!(attributes.merge!(:password_confirmation => attributes[:password]))
    @user.confirm! unless unconfirmed
  end
end

