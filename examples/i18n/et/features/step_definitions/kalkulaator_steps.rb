$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../../lib")
require 'kalkulaator'

Before do
  @calc = Kalkulaator.new
end

After do
end

Given(/olen sisestanud kalkulaatorisse numbri (\d+)/) do |n|
  @calc.push n.to_i
end

When(/ma vajutan (\w+)/) do |op|
  @result = @calc.send op
end

Then(/vastuseks peab ekraanil kuvatama (.*)/) do |result|
  expect(@result).to eq(result.to_f)
end
