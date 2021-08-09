require 'date'
require 'yaml'
def french_ssn_info(number)
  my_regex = /^(?<gender>[12])(?<year>\d{2})(?<month>[01]\d)(?<department>\d{2})(?<code>\d{6})(?<key>\d{2})/
  number.gsub!(/\s+/, "")
  return "The number is invalid" unless number.match?(my_regex)
  match_data = number.match(my_regex)
  p match_data
  gender = match_data[:gender].to_i == 1 ? "male" : "female"
  month = Date::MONTHNAMES[match_data[:month].to_i]
  thing = YAML.load_file('data/french_departments.yml')
  return "a #{gender}, born in #{month}, 19#{match_data[:year]} in #{thing[match_data[:department]]}."

end
