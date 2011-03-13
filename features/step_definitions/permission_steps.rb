Given /^"([^"]*)" can ([^"]+?)(?:\s[io]n)? the "([^"]*)" project$/ do |user, action, project|
  create_permission(user, project, action)
end

def create_permission(user, project, action)
  Permission.create(:user => find_user(user), :resource => find_project(project), :action => action)
end

def find_user(name)
  User.find_by_email!(name)
end

def find_project(name)
  Project.find_by_name!(name)
end

