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


module Google
  module Cloud
    module Dialogflow
      module V2
        # Represents a conversation participant (human agent, virtual agent, end-user).
        # @!attribute [rw] name
        #   @return [::String]
        #     Optional. The unique identifier of this participant.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/participants/<Participant ID>`.
        # @!attribute [rw] role
        #   @return [::Google::Cloud::Dialogflow::V2::Participant::Role]
        #     Immutable. The role this participant plays in the conversation. This field
        #     must be set during participant creation and is then immutable.
        # @!attribute [rw] sip_recording_media_label
        #   @return [::String]
        #     Optional. Label applied to streams representing this participant in SIPREC
        #     XML metadata and SDP. This is used to assign transcriptions from that
        #     media stream to this participant. This field can be updated.
        # @!attribute [rw] documents_metadata_filters
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Key-value filters on the metadata of documents returned by
        #     article suggestion. If specified, article suggestion only returns suggested
        #     documents that match all filters in their
        #     {::Google::Cloud::Dialogflow::V2::Document#metadata Document.metadata}. Multiple
        #     values for a metadata key should be concatenated by comma. For example,
        #     filters to match all documents that have 'US' or 'CA' in their market
        #     metadata values and 'agent' in their user metadata values will be
        #     ```
        #     documents_metadata_filters {
        #       key: "market"
        #       value: "US,CA"
        #     }
        #     documents_metadata_filters {
        #       key: "user"
        #       value: "agent"
        #     }
        #     ```
        class Participant
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class DocumentsMetadataFiltersEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Enumeration of the roles a participant can play in a conversation.
          module Role
            # Participant role not set.
            ROLE_UNSPECIFIED = 0

            # Participant is a human agent.
            HUMAN_AGENT = 1

            # Participant is an automated agent, such as a Dialogflow agent.
            AUTOMATED_AGENT = 2

            # Participant is an end user that has called or chatted with
            # Dialogflow services.
            END_USER = 3
          end
        end

        # Represents a message posted into a conversation.
        # @!attribute [rw] name
        #   @return [::String]
        #     The unique identifier of the message.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] content
        #   @return [::String]
        #     Required. The message content.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The message language.
        #     This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
        #     language tag. Example: "en-US".
        # @!attribute [r] participant
        #   @return [::String]
        #     Output only. The participant that sends this message.
        # @!attribute [r] participant_role
        #   @return [::Google::Cloud::Dialogflow::V2::Participant::Role]
        #     Output only. The role of the participant.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the message was created.
        # @!attribute [r] message_annotation
        #   @return [::Google::Cloud::Dialogflow::V2::MessageAnnotation]
        #     Output only. The annotation for the message.
        class Message
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#create_participant Participants.CreateParticipant}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource identifier of the conversation adding the participant.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>`.
        # @!attribute [rw] participant
        #   @return [::Google::Cloud::Dialogflow::V2::Participant]
        #     Required. The participant to create.
        class CreateParticipantRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#get_participant Participants.GetParticipant}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the participant. Format:
        #     `projects/<Project ID>/locations/<Location ID>/conversations/<Conversation
        #     ID>/participants/<Participant ID>`.
        class GetParticipantRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#list_participants Participants.ListParticipants}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The conversation to list all participants from.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListParticipantsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#list_participants Participants.ListParticipants}.
        # @!attribute [rw] participants
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::Participant>]
        #     The list of participants. There is a maximum number of items
        #     returned based on the page_size field in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results or empty if there are no
        #     more results in the list.
        class ListParticipantsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#update_participant Participants.UpdateParticipant}.
        # @!attribute [rw] participant
        #   @return [::Google::Cloud::Dialogflow::V2::Participant]
        #     Required. The participant to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The mask to specify which fields to update.
        class UpdateParticipantRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#analyze_content Participants.AnalyzeContent}.
        # @!attribute [rw] participant
        #   @return [::String]
        #     Required. The name of the participant this text comes from.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/participants/<Participant ID>`.
        # @!attribute [rw] text_input
        #   @return [::Google::Cloud::Dialogflow::V2::TextInput]
        #     The natural language text to be processed.
        # @!attribute [rw] event_input
        #   @return [::Google::Cloud::Dialogflow::V2::EventInput]
        #     An input event to send to Dialogflow.
        # @!attribute [rw] reply_audio_config
        #   @return [::Google::Cloud::Dialogflow::V2::OutputAudioConfig]
        #     Speech synthesis configuration.
        #     The speech synthesis settings for a virtual agent that may be configured
        #     for the associated conversation profile are not used when calling
        #     AnalyzeContent. If this configuration is not supplied, speech synthesis
        #     is disabled.
        # @!attribute [rw] query_params
        #   @return [::Google::Cloud::Dialogflow::V2::QueryParameters]
        #     Parameters for a Dialogflow virtual-agent query.
        # @!attribute [rw] assist_query_params
        #   @return [::Google::Cloud::Dialogflow::V2::AssistQueryParameters]
        #     Parameters for a human assist query.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters.
        #     A random UUID is recommended.
        #     This request is only idempotent if a `request_id` is provided.
        class AnalyzeContentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The message in the response that indicates the parameters of DTMF.
        # @!attribute [rw] accepts_dtmf_input
        #   @return [::Boolean]
        #     Indicates whether DTMF input can be handled in the next request.
        class DtmfParameters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#analyze_content Participants.AnalyzeContent}.
        # @!attribute [rw] reply_text
        #   @return [::String]
        #     The output text content.
        #     This field is set if the automated agent responded with text to show to
        #     the user.
        # @!attribute [rw] reply_audio
        #   @return [::Google::Cloud::Dialogflow::V2::OutputAudio]
        #     The audio data bytes encoded as specified in the request.
        #     This field is set if:
        #
        #      - `reply_audio_config` was specified in the request, or
        #      - The automated agent responded with audio to play to the user. In such
        #        case, `reply_audio.config` contains settings used to synthesize the
        #        speech.
        #
        #     In some scenarios, multiple output audio fields may be present in the
        #     response structure. In these cases, only the top-most-level audio output
        #     has content.
        # @!attribute [rw] automated_agent_reply
        #   @return [::Google::Cloud::Dialogflow::V2::AutomatedAgentReply]
        #     Only set if a Dialogflow automated agent has responded.
        #     Note that: [AutomatedAgentReply.detect_intent_response.output_audio][]
        #     and [AutomatedAgentReply.detect_intent_response.output_audio_config][]
        #     are always empty, use
        #     {::Google::Cloud::Dialogflow::V2::AnalyzeContentResponse#reply_audio reply_audio}
        #     instead.
        # @!attribute [rw] message
        #   @return [::Google::Cloud::Dialogflow::V2::Message]
        #     Message analyzed by CCAI.
        # @!attribute [rw] human_agent_suggestion_results
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SuggestionResult>]
        #     The suggestions for most recent human agent. The order is the same as
        #     {::Google::Cloud::Dialogflow::V2::HumanAgentAssistantConfig::SuggestionConfig#feature_configs HumanAgentAssistantConfig.SuggestionConfig.feature_configs}
        #     of
        #     {::Google::Cloud::Dialogflow::V2::HumanAgentAssistantConfig#human_agent_suggestion_config HumanAgentAssistantConfig.human_agent_suggestion_config}.
        # @!attribute [rw] end_user_suggestion_results
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SuggestionResult>]
        #     The suggestions for end user. The order is the same as
        #     {::Google::Cloud::Dialogflow::V2::HumanAgentAssistantConfig::SuggestionConfig#feature_configs HumanAgentAssistantConfig.SuggestionConfig.feature_configs}
        #     of
        #     {::Google::Cloud::Dialogflow::V2::HumanAgentAssistantConfig#end_user_suggestion_config HumanAgentAssistantConfig.end_user_suggestion_config}.
        # @!attribute [rw] dtmf_parameters
        #   @return [::Google::Cloud::Dialogflow::V2::DtmfParameters]
        #     Indicates the parameters of DTMF.
        class AnalyzeContentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#suggest_articles Participants.SuggestArticles}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the participant to fetch suggestion for.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/participants/<Participant ID>`.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message to compile suggestion
        #     for. If empty, it will be the latest message of the conversation.
        #
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Max number of messages prior to and including
        #     {::Google::Cloud::Dialogflow::V2::SuggestArticlesRequest#latest_message latest_message}
        #     to use as context when compiling the suggestion. By default 20 and at
        #     most 50.
        # @!attribute [rw] assist_query_params
        #   @return [::Google::Cloud::Dialogflow::V2::AssistQueryParameters]
        #     Parameters for a human assist query.
        class SuggestArticlesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#suggest_articles Participants.SuggestArticles}.
        # @!attribute [rw] article_answers
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::ArticleAnswer>]
        #     Articles ordered by score in descending order.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message used to compile
        #     suggestion for.
        #
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Number of messages prior to and including
        #     {::Google::Cloud::Dialogflow::V2::SuggestArticlesResponse#latest_message latest_message}
        #     to compile the suggestion. It may be smaller than the
        #     {::Google::Cloud::Dialogflow::V2::SuggestArticlesRequest#context_size SuggestArticlesRequest.context_size}
        #     field in the request if there aren't that many messages in the
        #     conversation.
        class SuggestArticlesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#suggest_faq_answers Participants.SuggestFaqAnswers}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the participant to fetch suggestion for.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/participants/<Participant ID>`.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message to compile suggestion
        #     for. If empty, it will be the latest message of the conversation.
        #
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Max number of messages prior to and including
        #     [latest_message] to use as context when compiling the
        #     suggestion. By default 20 and at most 50.
        # @!attribute [rw] assist_query_params
        #   @return [::Google::Cloud::Dialogflow::V2::AssistQueryParameters]
        #     Parameters for a human assist query.
        class SuggestFaqAnswersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#suggest_faq_answers Participants.SuggestFaqAnswers}.
        # @!attribute [rw] faq_answers
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::FaqAnswer>]
        #     Answers extracted from FAQ documents.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message used to compile
        #     suggestion for.
        #
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Number of messages prior to and including
        #     {::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersResponse#latest_message latest_message}
        #     to compile the suggestion. It may be smaller than the
        #     {::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersRequest#context_size SuggestFaqAnswersRequest.context_size}
        #     field in the request if there aren't that many messages in the
        #     conversation.
        class SuggestFaqAnswersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the natural language speech audio to be played to the end user.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Dialogflow::V2::OutputAudioConfig]
        #     Instructs the speech synthesizer how to generate the speech
        #     audio.
        # @!attribute [rw] audio
        #   @return [::String]
        #     The natural language speech audio.
        class OutputAudio
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a response from an automated agent.
        # @!attribute [rw] detect_intent_response
        #   @return [::Google::Cloud::Dialogflow::V2::DetectIntentResponse]
        #     Response of the Dialogflow
        #     {::Google::Cloud::Dialogflow::V2::Sessions::Client#detect_intent Sessions.DetectIntent}
        #     call.
        # @!attribute [rw] automated_agent_reply_type
        #   @return [::Google::Cloud::Dialogflow::V2::AutomatedAgentReply::AutomatedAgentReplyType]
        #     AutomatedAgentReply type.
        # @!attribute [rw] allow_cancellation
        #   @return [::Boolean]
        #     Indicates whether the partial automated agent reply is interruptible when a
        #     later reply message arrives. e.g. if the agent specified some music as
        #     partial response, it can be cancelled.
        class AutomatedAgentReply
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents different automated agent reply types.
          module AutomatedAgentReplyType
            # Not specified. This should never happen.
            AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED = 0

            # Partial reply. e.g. Aggregated responses in a `Fulfillment` that enables
            # `return_partial_response` can be returned as partial reply.
            # WARNING: partial reply is not eligible for barge-in.
            PARTIAL = 1

            # Final reply.
            FINAL = 2
          end
        end

        # Represents article answer.
        # @!attribute [rw] title
        #   @return [::String]
        #     The article title.
        # @!attribute [rw] uri
        #   @return [::String]
        #     The article URI.
        # @!attribute [rw] snippets
        #   @return [::Array<::String>]
        #     Article snippets.
        # @!attribute [rw] confidence
        #   @return [::Float]
        #     Article match confidence.
        #     The system's confidence score that this article is a good match for this
        #     conversation, as a value from 0.0 (completely uncertain) to 1.0
        #     (completely certain).
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A map that contains metadata about the answer and the
        #     document from which it originates.
        # @!attribute [rw] answer_record
        #   @return [::String]
        #     The name of answer record, in the format of
        #     "projects/<Project ID>/locations/<Location ID>/answerRecords/<Answer Record
        #     ID>"
        class ArticleAnswer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Represents answer from "frequently asked questions".
        # @!attribute [rw] answer
        #   @return [::String]
        #     The piece of text from the `source` knowledge base document.
        # @!attribute [rw] confidence
        #   @return [::Float]
        #     The system's confidence score that this Knowledge answer is a good match
        #     for this conversational query, range from 0.0 (completely uncertain)
        #     to 1.0 (completely certain).
        # @!attribute [rw] question
        #   @return [::String]
        #     The corresponding FAQ question.
        # @!attribute [rw] source
        #   @return [::String]
        #     Indicates which Knowledge Document this answer was extracted
        #     from.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/agent/knowledgeBases/<Knowledge Base ID>/documents/<Document ID>`.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A map that contains metadata about the answer and the
        #     document from which it originates.
        # @!attribute [rw] answer_record
        #   @return [::String]
        #     The name of answer record, in the format of
        #     "projects/<Project ID>/locations/<Location ID>/answerRecords/<Answer Record
        #     ID>"
        class FaqAnswer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # One response of different type of suggestion response which is used in
        # the response of
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#analyze_content Participants.AnalyzeContent}
        # and
        # {::Google::Cloud::Dialogflow::V2::Participants::Client#analyze_content Participants.AnalyzeContent},
        # as well as
        # {::Google::Cloud::Dialogflow::V2::HumanAgentAssistantEvent HumanAgentAssistantEvent}.
        # @!attribute [rw] error
        #   @return [::Google::Rpc::Status]
        #     Error status if the request failed.
        # @!attribute [rw] suggest_articles_response
        #   @return [::Google::Cloud::Dialogflow::V2::SuggestArticlesResponse]
        #     SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.
        # @!attribute [rw] suggest_faq_answers_response
        #   @return [::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersResponse]
        #     SuggestFaqAnswersResponse if request is for FAQ_ANSWER.
        class SuggestionResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a part of a message possibly annotated with an entity. The part
        # can be an entity or purely a part of the message between two entities or
        # message start/end.
        # @!attribute [rw] text
        #   @return [::String]
        #     A part of a message possibly annotated with an entity.
        # @!attribute [rw] entity_type
        #   @return [::String]
        #     The [Dialogflow system entity
        #     type](https://cloud.google.com/dialogflow/docs/reference/system-entities)
        #     of this message part. If this is empty, Dialogflow could not annotate the
        #     phrase part with a system entity.
        # @!attribute [rw] formatted_value
        #   @return [::Google::Protobuf::Value]
        #     The [Dialogflow system entity formatted value
        #     ](https://cloud.google.com/dialogflow/docs/reference/system-entities) of
        #     this message part. For example for a system entity of type
        #     `@sys.unit-currency`, this may contain:
        #     <pre>
        #     {
        #       "amount": 5,
        #       "currency": "USD"
        #     }
        #     </pre>
        class AnnotatedMessagePart
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the result of annotation for the message.
        # @!attribute [rw] parts
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::AnnotatedMessagePart>]
        #     The collection of annotated message parts ordered by their
        #     position in the message. You can recover the annotated message by
        #     concatenating [AnnotatedMessagePart.text].
        # @!attribute [rw] contain_entities
        #   @return [::Boolean]
        #     Indicates whether the text message contains entities.
        class MessageAnnotation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the parameters of human assist query.
        # @!attribute [rw] documents_metadata_filters
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Key-value filters on the metadata of documents returned by article
        #     suggestion. If specified, article suggestion only returns suggested
        #     documents that match all filters in their
        #     {::Google::Cloud::Dialogflow::V2::Document#metadata Document.metadata}. Multiple
        #     values for a metadata key should be concatenated by comma. For example,
        #     filters to match all documents that have 'US' or 'CA' in their market
        #     metadata values and 'agent' in their user metadata values will be
        #     documents_metadata_filters {
        #       key: "market"
        #       value: "US,CA"
        #     }
        #     documents_metadata_filters {
        #       key: "user"
        #       value: "agent"
        #     }
        class AssistQueryParameters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class DocumentsMetadataFiltersEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
