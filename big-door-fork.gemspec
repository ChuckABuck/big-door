# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{big-door}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Lavrisha"]
  s.date = %q{2010-09-21}
  s.description = %q{A gem to interact with Big Door Media's API}
  s.email = %q{mlavrisha@trada.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".bundle/config",
     ".document",
     ".gitignore",
     "Gemfile",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "big-door.gemspec",
     "features/big-door.feature",
     "features/step_definitions/big-door_steps.rb",
     "features/support/env.rb",
     "lib/big-door.rb",
     "lib/big-door/base.rb",
     "lib/big-door/currency.rb",
     "lib/big-door/named_award.rb",
     "lib/big-door/named_award_collection.rb",
     "lib/big-door/named_level.rb",
     "lib/big-door/named_level_collection.rb",
     "lib/big-door/named_transaction.rb",
     "lib/big-door/named_transaction_group.rb",
     "lib/big-door/request.rb",
     "lib/big-door/response_codes.rb",
     "lib/big-door/user.rb",
     "spec/.rspec",
     "spec/big-door_spec.rb",
     "spec/spec_helper.rb",
     "spec/support/vcr.rb",
     "vcr_cassettes/NamedTransaction/NamedTransaction.yml",
     "vcr_cassettes/NamedTransaction/specific.yml",
     "vcr_cassettes/award/award_summary.yml",
     "vcr_cassettes/currency/currency.yml",
     "vcr_cassettes/currency/currency_type.yml",
     "vcr_cassettes/currency/specific.yml",
     "vcr_cassettes/good/good_summary.yml",
     "vcr_cassettes/level/level_summary.yml",
     "vcr_cassettes/named_transaction/named_transactions.yml",
     "vcr_cassettes/named_transaction_group/all.yml",
     "vcr_cassettes/named_transaction_group/specific.yml",
     "vcr_cassettes/user/add_points.yml",
     "vcr_cassettes/user/all.yml",
     "vcr_cassettes/user/blank.yml",
     "vcr_cassettes/user/create.yml",
     "vcr_cassettes/user/currency_balance.yml",
     "vcr_cassettes/user/delete.yml",
     "vcr_cassettes/user/new.yml",
     "vcr_cassettes/user/new_currency_balance.yml",
     "vcr_cassettes/user/specific.yml"
  ]
  s.homepage = %q{http://github.com/danieljohnmorris/big-door}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Fork of Big Door Media gem}
  s.test_files = [
    "spec/big-door_spec.rb",
     "spec/spec_helper.rb",
     "spec/support/vcr.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0.beta.19"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.8.5"])
      s.add_runtime_dependency(%q<httparty>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<json>, ["~> 1.4.3"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.19"])
      s.add_dependency(%q<cucumber>, ["~> 0.8.5"])
      s.add_dependency(%q<httparty>, ["~> 0.6.0"])
      s.add_dependency(%q<json>, ["~> 1.4.3"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.19"])
    s.add_dependency(%q<cucumber>, ["~> 0.8.5"])
    s.add_dependency(%q<httparty>, ["~> 0.6.0"])
    s.add_dependency(%q<json>, ["~> 1.4.3"])
  end
end

