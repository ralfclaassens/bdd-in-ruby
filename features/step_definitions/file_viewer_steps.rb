Given(/^I am in the root of my filesystem$/) do
  @dirs = [ Dir.pwd ]
end

Then(/^I expect to see my files$/) do
  expect(all_output).to include 'features'
end
