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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/bigquery/storage/v1/big_query_write"

class ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::ClientPathsTest < Minitest::Test
  def test_table_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.table_path project: "value0", dataset: "value1", table: "value2"
      assert_equal "projects/value0/datasets/value1/tables/value2", path
    end
  end

  def test_write_stream_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.write_stream_path project: "value0", dataset: "value1", table: "value2", stream: "value3"
      assert_equal "projects/value0/datasets/value1/tables/value2/streams/value3", path
    end
  end
end
