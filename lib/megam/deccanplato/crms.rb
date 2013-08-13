module Megam
  class Deccanplato
    # GET /crm
    #Yet to be tested
    def get_crm(json_string)

      @options = {:path => "/provider/crm",
        :body => json_string}.merge(@options)

      request(
        :expects  => 200,
        :method   => :get,
        :body     => @options[:body]
      )
    end

    # The body content needs to be a json.
    def post_crm(json_hash)
      puts "==============>"+json_hash[:json]
      @options = {:path => '/provider/crm',
      :body => json_hash[:json]}.merge(@options)
       
      request(
        :expects  => 200,
        :method   => :post,
        :body     => @options[:body]
        )
    end
  end
end
