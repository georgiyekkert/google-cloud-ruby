# frozen_string_literal: true

# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module Recommender
      module V1
        # Request for the `ListInsights` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The container resource on which to execute the request.
        #     Acceptable formats:
        #
        #     1.
        #     "projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]",
        #
        #     LOCATION here refers to GCP Locations:
        #     https://cloud.google.com/about/locations/
        #     INSIGHT_TYPE_ID refers to supported insight types:
        #     https://cloud.google.com/recommender/docs/insights/insight-types.)
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of results to return from this request.  Non-positive
        #     values are ignored. If not specified, the server will determine the number
        #     of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If present, retrieves the next batch of results from the preceding call to
        #     this method. `page_token` must be the value of `next_page_token` from the
        #     previous response. The values of other method parameters must be identical
        #     to those in the previous call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter expression to restrict the insights returned. Supported
        #     filter fields: state
        #     Eg: `state:"DISMISSED" or state:"ACTIVE"
        class ListInsightsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response to the `ListInsights` method.
        # @!attribute [rw] insights
        #   @return [::Array<::Google::Cloud::Recommender::V1::Insight>]
        #     The set of insights for the `parent` resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be used to request the next page of results. This field is
        #     empty if there are no additional results.
        class ListInsightsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to the `GetInsight` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the insight.
        class GetInsightRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `MarkInsightAccepted` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the insight.
        # @!attribute [rw] state_metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. State properties user wish to include with this state.  Full replace of the
        #     current state_metadata.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Required. Fingerprint of the Insight. Provides optimistic locking.
        class MarkInsightAcceptedRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class StateMetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request for the `ListRecommendations` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The container resource on which to execute the request.
        #     Acceptable formats:
        #
        #     1.
        #     "projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]",
        #
        #     LOCATION here refers to GCP Locations:
        #     https://cloud.google.com/about/locations/
        #     RECOMMENDER_ID refers to supported recommenders:
        #     https://cloud.google.com/recommender/docs/recommenders.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of results to return from this request.  Non-positive
        #     values are ignored. If not specified, the server will determine the number
        #     of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If present, retrieves the next batch of results from the preceding call to
        #     this method. `page_token` must be the value of `next_page_token` from the
        #     previous response. The values of other method parameters must be identical
        #     to those in the previous call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter expression to restrict the recommendations returned. Supported
        #     filter fields: state_info.state
        #     Eg: `state_info.state:"DISMISSED" or state_info.state:"FAILED"
        class ListRecommendationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response to the `ListRecommendations` method.
        # @!attribute [rw] recommendations
        #   @return [::Array<::Google::Cloud::Recommender::V1::Recommendation>]
        #     The set of recommendations for the `parent` resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be used to request the next page of results. This field is
        #     empty if there are no additional results.
        class ListRecommendationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to the `GetRecommendation` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the recommendation.
        class GetRecommendationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `MarkRecommendationClaimed` Method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the recommendation.
        # @!attribute [rw] state_metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     State properties to include with this state. Overwrites any existing
        #     `state_metadata`.
        #     Keys must match the regex `/^[a-z0-9][a-z0-9_.-]{0,62}$/`.
        #     Values must match the regex `/^[a-zA-Z0-9_./-]{0,255}$/`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Required. Fingerprint of the Recommendation. Provides optimistic locking.
        class MarkRecommendationClaimedRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class StateMetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request for the `MarkRecommendationSucceeded` Method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the recommendation.
        # @!attribute [rw] state_metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     State properties to include with this state. Overwrites any existing
        #     `state_metadata`.
        #     Keys must match the regex `/^[a-z0-9][a-z0-9_.-]{0,62}$/`.
        #     Values must match the regex `/^[a-zA-Z0-9_./-]{0,255}$/`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Required. Fingerprint of the Recommendation. Provides optimistic locking.
        class MarkRecommendationSucceededRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class StateMetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request for the `MarkRecommendationFailed` Method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the recommendation.
        # @!attribute [rw] state_metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     State properties to include with this state. Overwrites any existing
        #     `state_metadata`.
        #     Keys must match the regex `/^[a-z0-9][a-z0-9_.-]{0,62}$/`.
        #     Values must match the regex `/^[a-zA-Z0-9_./-]{0,255}$/`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Required. Fingerprint of the Recommendation. Provides optimistic locking.
        class MarkRecommendationFailedRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class StateMetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
