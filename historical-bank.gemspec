#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'historical-bank'
  s.version     = '0.1.7'
  s.summary     = 'Historical Bank'
  s.description = 'A `Money::Bank::Base` with historical exchange rates'
  s.authors     = ['Kostis Dadamis', 'Emili Parreno']
  s.email       = ['provlhma@gmail.com']
  s.homepage    = 'https://github.com/jeopard/historical-bank-ruby'
  s.license     = 'Apache-2.0'

  s.files = Dir['lib/**/*.rb', 'examples/*.rb', 'spec/**/*.rb']
  s.files += ['Gemfile', 'historical-bank.gemspec', 'README.md', 'LICENSE',
              'CONTRIBUTING.md', 'AUTHORS', 'CHANGELOG.md',
              'spec/fixtures/time-series-2015-09.json']

  s.test_files = s.files.grep(%r{^spec/})

  s.extra_rdoc_files = ['README.md']

  s.requirements = 'redis'

  s.require_path = 'lib'

  s.required_ruby_version = '>= 3.1.0'

  s.add_runtime_dependency 'bigdecimal', '>= 3.0'
  s.add_runtime_dependency 'httparty',   '~> 0.19'
  s.add_runtime_dependency 'money',      '~> 6.7'
  s.add_runtime_dependency 'redis',      '>= 4.0'

  s.add_development_dependency 'faker'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'webmock'
end
