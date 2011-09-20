#
# Cookbook Name: hadoop
# Recipe: cloudera-scm-agent.rb
#
# Copyright (c) 2011 Dell Inc.
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

require File.join(File.dirname(__FILE__), '../libraries/common')

#######################################################################
# Begin recipe transactions
#######################################################################
debug = node[:hadoop][:debug]
Chef::Log.info("BEGIN hadoop:cloudera-scm-agent") if debug

# Install the Cloudera Service and Configuration Manager (SCM) agent.
package "cloudera-scm-agent" do
  action :install
end

#######################################################################
# End of recipe transactions
#######################################################################
Chef::Log.info("END hadoop:cloudera-scm-agent") if debug
