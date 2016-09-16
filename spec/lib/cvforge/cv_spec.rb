RSpec.describe Cvforge::CV do
  let(:cv) do
    Cvforge::CV.define do
      name "Brian Miller"
      email "brimil01@gmail.com"
      phone "(818) 800-1871"
      address do
        address "8652 Casaba Ave"
        city "Winnetka"
        state "CA"
        zip "91306"
      end

      skill "Ruby"
      skill "Java"
      skill "PostgresSQL"

      employment do
        name "Acorns"
        type "full-time"
        website "https://www.acorns.com"
        start_date "05/2015"
        title "Senior Software Engineer"
        description "Senior level contributor to platform and data engineering teams"
        accomplishment "Implemented tooling and migrated infrastructure to a docker based deployment process on AWS"
        accomplishment "Spearheaded a micro service based architecture to decouple key business services and promote good architectural practices"
        accomplishment "Created a hadoop based cluster for high performance analytics"
      end

      education do
        name "CSU Northridge"
        website "http://www.csun.edu"
        degree "Bachelors of Science, Computer Science"
        start_year "2003"
        end_year "2007"
      end
    end
  end


  describe "CV generation" do
    it "does a thing" do
      cv
    end
  end
end

