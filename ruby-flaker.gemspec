Gem::Specification.new do |s|
  s.name = %q{ruby-flaker}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Grzegorz Kazulak"]
  s.date = %q{2009-05-31}
  s.description = %q{API wrapper for Flaker.pl written in Ruby.}
  s.email = %q{grzegorz.kazulak@gmail.com}
  s.files = ["Manifest.txt", "API.txt", "History.txt", "README.markdown", "VERSION.yml", "lib/flaker", "lib/flaker/base.rb", "lib/flaker/wrapper.rb", "spec/flaker_spec", "spec/spec_helper", "spec/spec.opts"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/grzegorzkazulak/ruby-flaker}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby-flaker}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{API wrapper for Flaker.pl written in Ruby..}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.15"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.15"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end