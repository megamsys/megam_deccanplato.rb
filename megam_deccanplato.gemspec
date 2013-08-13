# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "megam/deccanplato/version"

Gem::Specification.new do |s|
  s.name        = "megam_deccanplato"
  s.version     = Megam::Deccanplato::VERSION
  s.authors     = ["Raj Thilak,Kishorekumar Neelamegam, Thomas Alrin"]
  s.email       = ["rajthilak@megam.co.in","nkishore@megam.co.in","alrin@megam.co.in"]
  s.homepage    = "http://github.com/indykish/megam_deccanplato.rb"
  s.license = "Apache V2"
  sextra_rdoc_files = ["README.md", "LICENSE" ]
  s.summary     = %q{Ruby Client for the Megam Deccanplato (Cloud Integration)}
  s.description = %q{Ruby Client for the Megam Deccanplato. Performs REST based HTTP call to http://github.com/indykish/deccanplato.git}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,fea,tures}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'excon'
  s.add_runtime_dependency 'highline'
  s.add_runtime_dependency 'yajl-ruby'
  s.add_runtime_dependency 'mixlib-config'
  s.add_runtime_dependency 'mixlib-log'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
end
