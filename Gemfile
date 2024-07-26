source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in rspec-time_stop.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.4.0")
  # term-ansicolor 1.10.3+ doesn't work on Ruby < 2.4
  # c.f. https://github.com/flori/term-ansicolor/commit/95f68f02ee38227c7f9e905a5ee3a48d3d3d98ca
  gem "term-ansicolor", "< 1.10.3"
end
