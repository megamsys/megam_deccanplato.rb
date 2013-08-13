# Copyright:: Copyright (c) 2012-2013 Megam Systems, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
module Megam
  class Crm
    def initialize
      @json = nil      
    end

    #used by resque workers and any other background job
    def crm
      self
    end

    def megam_rest
      options = { :json => Megam::Config[:json]}
      Megam::Deccanplato.new(options)
    end

    def json(arg=nil)
      if arg != nil
        @json = arg
      else
      @json
      end
    end

    def error?
      crocked  = true if (some_msg.has_key?(:msg_type) && some_msg[:msg_type] == "error")
    end

    # Transform the ruby obj ->  to a Hash
    def to_hash
      index_hash = Hash.new
      index_hash["json_claz"] = self.class.name
      index_hash["json"] = json      
      index_hash
    end 

    def self.from_hash(o)
      acct = self.new()
      acct.from_hash(o)
      acct
    end

    def from_hash(o)
      @json = o[:json] if o.has_key?(:json)     
      self
    end

    def self.create(o)
      acct = from_hash(o)
      acct.create
    end

    # Create the node via the REST API
    def create
      megam_rest.post_crm(to_hash)
      self
    end

    def to_s
      Megam::Stuff.styled_hash(to_hash)
    #"---> Megam::Account:[error=#{error?}]\n"+
    end
  end
end
