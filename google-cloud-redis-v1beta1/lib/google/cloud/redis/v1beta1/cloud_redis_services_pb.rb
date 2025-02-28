# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/redis/v1beta1/cloud_redis.proto for package 'google.cloud.redis.v1beta1'
# Original file comments:
# Copyright 2020 Google LLC
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

require 'grpc'
require 'google/cloud/redis/v1beta1/cloud_redis_pb'

module Google
  module Cloud
    module Redis
      module V1beta1
        module CloudRedis
          # Configures and manages Cloud Memorystore for Redis instances
          #
          # Google Cloud Memorystore for Redis v1beta1
          #
          # The `redis.googleapis.com` service implements the Google Cloud Memorystore
          # for Redis API and defines the following resource model for managing Redis
          # instances:
          # * The service works with a collection of cloud projects, named: `/projects/*`
          # * Each project has a collection of available locations, named: `/locations/*`
          # * Each location has a collection of Redis instances, named: `/instances/*`
          # * As such, Redis instances are resources of the form:
          #   `/projects/{project_id}/locations/{location_id}/instances/{instance_id}`
          #
          # Note that location_id must be referring to a GCP `region`; for example:
          # * `projects/redpepper-1290/locations/us-central1/instances/my-redis`
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.redis.v1beta1.CloudRedis'

            # Lists all Redis instances owned by a project in either the specified
            # location (region) or all locations.
            #
            # The location should have the following format:
            #
            # * `projects/{project_id}/locations/{location_id}`
            #
            # If `location_id` is specified as `-` (wildcard), then all regions
            # available to the project are queried, and the results are aggregated.
            rpc :ListInstances, ::Google::Cloud::Redis::V1beta1::ListInstancesRequest, ::Google::Cloud::Redis::V1beta1::ListInstancesResponse
            # Gets the details of a specific Redis instance.
            rpc :GetInstance, ::Google::Cloud::Redis::V1beta1::GetInstanceRequest, ::Google::Cloud::Redis::V1beta1::Instance
            # Creates a Redis instance based on the specified tier and memory size.
            #
            # By default, the instance is accessible from the project's
            # [default network](https://cloud.google.com/vpc/docs/vpc).
            #
            # The creation is executed asynchronously and callers may check the returned
            # operation to track its progress. Once the operation is completed the Redis
            # instance will be fully functional. The completed longrunning.Operation will
            # contain the new instance object in the response field.
            #
            # The returned operation is automatically deleted after a few hours, so there
            # is no need to call DeleteOperation.
            rpc :CreateInstance, ::Google::Cloud::Redis::V1beta1::CreateInstanceRequest, ::Google::Longrunning::Operation
            # Updates the metadata and configuration of a specific Redis instance.
            #
            # Completed longrunning.Operation will contain the new instance object
            # in the response field. The returned operation is automatically deleted
            # after a few hours, so there is no need to call DeleteOperation.
            rpc :UpdateInstance, ::Google::Cloud::Redis::V1beta1::UpdateInstanceRequest, ::Google::Longrunning::Operation
            # Upgrades Redis instance to the newer Redis version specified in the
            # request.
            rpc :UpgradeInstance, ::Google::Cloud::Redis::V1beta1::UpgradeInstanceRequest, ::Google::Longrunning::Operation
            # Import a Redis RDB snapshot file from Cloud Storage into a Redis instance.
            #
            # Redis may stop serving during this operation. Instance state will be
            # IMPORTING for entire operation. When complete, the instance will contain
            # only data from the imported file.
            #
            # The returned operation is automatically deleted after a few hours, so
            # there is no need to call DeleteOperation.
            rpc :ImportInstance, ::Google::Cloud::Redis::V1beta1::ImportInstanceRequest, ::Google::Longrunning::Operation
            # Export Redis instance data into a Redis RDB format file in Cloud Storage.
            #
            # Redis will continue serving during this operation.
            #
            # The returned operation is automatically deleted after a few hours, so
            # there is no need to call DeleteOperation.
            rpc :ExportInstance, ::Google::Cloud::Redis::V1beta1::ExportInstanceRequest, ::Google::Longrunning::Operation
            # Initiates a failover of the primary node to current replica node for a
            # specific STANDARD tier Cloud Memorystore for Redis instance.
            rpc :FailoverInstance, ::Google::Cloud::Redis::V1beta1::FailoverInstanceRequest, ::Google::Longrunning::Operation
            # Deletes a specific Redis instance.  Instance stops serving and data is
            # deleted.
            rpc :DeleteInstance, ::Google::Cloud::Redis::V1beta1::DeleteInstanceRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
