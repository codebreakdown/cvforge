require 'cvforge'
require 'pry'

cv = Cvforge::CV.define do
  name "Brian Miller"
  email "someone@somewhere.com"
  phone "(888) 800-1000"
  address do
    address "1234 Address Ave"
    city "Somewhere"
    state "NY"
    zip "12345"
  end

  skill "Ruby"
  skill "PostgresSQL"
  skill "Redis"

  employment do
    name "Acorns"
    type "full-time"
    website "https://www.acorns.com"
    start_date "01/2015"
    title "Identity Architect"
    description "Lord of the identity"
    accomplishment "Did all the things"
  end

  education do
    name "CSU Northridge"
    website "http://www.csun.edu"
    degree "Bachelors of Science, Computer Science"
    start_year "2003"
    end_year "2007"
  end
end

