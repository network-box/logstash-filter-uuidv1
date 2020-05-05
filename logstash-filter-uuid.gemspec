Gem::Specification.new do |s|

  s.name            = 'logstash-filter-uuidv1'
  s.version         = '3.0.5'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Adds a UUID to events"
  s.description     = "This gem is a Logstash plugin based on elastic UUID plugin."
  s.authors         = ["Elastic", "Network Box"]
  s.email           = ''
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"

  s.add_development_dependency 'logstash-devutils'
end
