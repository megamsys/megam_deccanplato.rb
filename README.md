Megam Cloud Integration Ruby Client
==================

The Megam Cloud Integration Ruby Client is used to interact with the Megam Deccanplato connector from Ruby.

For more about the Megam API see <http://docs.megam.co>.[Megam Deccanplato server](https://github.com/indykish/megam_deccanplato.git)

[![Build Status](https://travis-ci.org/indykish/megam_deccanplato.png)](https://travis-ci.org/indykish/megam_deccanplato)

Launching soon. For early access [register at:](http://www.megam.co)

Usage
-----

Start by creating a connection to Megam with your credentials:

    require 'megam_deccanplato'

    megam = Megam::Deccanplato.new

Now you can make requests to the api.

Requests
--------

What follows is an overview of commands you can run for the client.

For additional details about any of the commands, see the [docs](http://docs.megam.co).

### CRM

    megam.get_crm                               # get the crm resource from a provider
    megam.post_crm                      	# post to a crm resource in a provider


### Storage

    megam.get_storage               		# get the crm resource from a provider
    megam.post_storage              		# post to a crm resource in a provider

### Collaboration

    megam.get_storage             		# get the crm resource from a provider
    megam.post_storage               		# post to a crm resource in a provider

We are glad to help if you have questions, or request for new features.

[twitter](http://twitter.com/indykish) [email](<rajthilak@megam.co.in>)

#### TO - DO

* Support more cloud connectors to [deccanplato](https://github.com/indykish/deccanplato) 
	
# License

|                      |                                          |
|:---------------------|:-----------------------------------------|
| **Author:**          | Raj Thilak (<rajthilka@megam.co.in>)
|                      | Kishorekumar Neelamegam (<nkishore@megam.co.in>)
|                      | Thomas Alrin (<alrin@megam.co.in>)
| **Copyright:**       | Copyright (c) 2012-2013 Megam Systems.
| **License:**         | Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

