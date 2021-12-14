# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START datacatalog_v1_generated_DataCatalog_UpdateEntryGroup_sync]
require "google/cloud/data_catalog/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::DataCatalog::V1::DataCatalog::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::DataCatalog::V1::UpdateEntryGroupRequest.new

# Call the update_entry_group method.
result = client.update_entry_group request

# The returned object is of type Google::Cloud::DataCatalog::V1::EntryGroup.
p result
# [END datacatalog_v1_generated_DataCatalog_UpdateEntryGroup_sync]
