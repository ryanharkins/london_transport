Gem::Specification.new do |s|
  s.name        = 'london_transport'
  s.version     = '0.0.1'
  s.date        = '2015-12-02'
  s.summary     = "Wrapper for the TFL API"
  s.description = "Wrapper for the TFL API"
  s.authors     = ["Edwin Wills"]
  s.email       = 'edwin@edwinwills.com'
  s.files       = ["lib/london_transport.rb"]
  s.homepage    = 'http://rubygems.org/gems/london_transport'
  s.license     = 'MIT'

  s.add_dependency "oj", "~> 2"
  s.add_development_dependency "rspec"
  s.add_development_dependency "webmock"
  s.add_development_dependency "vcr"
end