Gem::Specification.new do |s|
  s.name = %q{beatmap-api}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marshall Beddoe"]
  s.date = %q{2011-05-08}
  s.description = "maps artist albums to urls"
  s.email = 'marshall@topspinmedia.com'
  s.extra_rdoc_files = [
    "LICENSE",
    "README"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README",
    "Rakefile",
    "lib/beatmap.rb",
    "lib/beatmap/lookup.rb",
    "lib/beatmap/site/rovi.rb",
    "lib/beatmap/site/itunes.rb",
    "lib/beatmap/site/base.rb",
    "lib/beatmap/lookup.rb",
    "spec/spec_helper.rb",
    "spec/beatmap/site/rovi_spec.rb"
  ]
  s.homepage = 'http://topspinmedia.com'
  s.licenses = ["FreeBSD"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = 'maps amg ids to albums and artist pages on different stores'
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/beatmap/site/rovi_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0.7.7"])
      s.add_runtime_dependency(%q<mocha>, ["~> 0.9.12"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.7.7"])
      s.add_dependency(%q<mocha>, ["~> 0.9.12"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.7.7"])
    s.add_dependency(%q<mocha>, ["~> 0.9.12"])
  end
end

