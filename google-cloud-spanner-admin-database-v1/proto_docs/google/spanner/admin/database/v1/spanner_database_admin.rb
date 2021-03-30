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
    module Spanner
      module Admin
        module Database
          module V1
            # Information about the database restore.
            # @!attribute [rw] source_type
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::RestoreSourceType]
            #     The type of the restore source.
            # @!attribute [rw] backup_info
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::BackupInfo]
            #     Information about the backup used to restore the database. The backup
            #     may no longer exist.
            class RestoreInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # A Cloud Spanner database.
            # @!attribute [rw] name
            #   @return [::String]
            #     Required. The name of the database. Values are of the form
            #     `projects/<project>/instances/<instance>/databases/<database>`,
            #     where `<database>` is as specified in the `CREATE DATABASE`
            #     statement. This name can be passed to other API methods to
            #     identify the database.
            # @!attribute [r] state
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::Database::State]
            #     Output only. The current database state.
            # @!attribute [r] create_time
            #   @return [::Google::Protobuf::Timestamp]
            #     Output only. If exists, the time at which the database creation started.
            # @!attribute [r] restore_info
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::RestoreInfo]
            #     Output only. Applicable only for restored databases. Contains information
            #     about the restore source.
            # @!attribute [r] encryption_config
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::EncryptionConfig]
            #     Output only. For databases that are using customer managed encryption, this
            #     field contains the encryption configuration for the database.
            #     For databases that are using Google default or other types of encryption,
            #     this field is empty.
            # @!attribute [r] encryption_info
            #   @return [::Array<::Google::Cloud::Spanner::Admin::Database::V1::EncryptionInfo>]
            #     Output only. For databases that are using customer managed encryption, this
            #     field contains the encryption information for the database, such as
            #     encryption state and the Cloud KMS key versions that are in use.
            #
            #     For databases that are using Google default or other types of encryption,
            #     this field is empty.
            #
            #     This field is propagated lazily from the backend. There might be a delay
            #     from when a key version is being used and when it appears in this field.
            # @!attribute [r] version_retention_period
            #   @return [::String]
            #     Output only. The period in which Cloud Spanner retains all versions of data
            #     for the database. This is the same as the value of version_retention_period
            #     database option set using
            #     {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#update_database_ddl UpdateDatabaseDdl}.
            #     Defaults to 1 hour, if not set.
            # @!attribute [r] earliest_version_time
            #   @return [::Google::Protobuf::Timestamp]
            #     Output only. Earliest timestamp at which older versions of the data can be
            #     read. This value is continuously updated by Cloud Spanner and becomes stale
            #     the moment it is queried. If you are using this value to recover data, make
            #     sure to account for the time from the moment when the value is queried to
            #     the moment when you initiate the recovery.
            class Database
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Indicates the current state of the database.
              module State
                # Not specified.
                STATE_UNSPECIFIED = 0

                # The database is still being created. Operations on the database may fail
                # with `FAILED_PRECONDITION` in this state.
                CREATING = 1

                # The database is fully created and ready for use.
                READY = 2

                # The database is fully created and ready for use, but is still
                # being optimized for performance and cannot handle full load.
                #
                # In this state, the database still references the backup
                # it was restore from, preventing the backup
                # from being deleted. When optimizations are complete, the full performance
                # of the database will be restored, and the database will transition to
                # `READY` state.
                READY_OPTIMIZING = 3
              end
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#list_databases ListDatabases}.
            # @!attribute [rw] parent
            #   @return [::String]
            #     Required. The instance whose databases should be listed.
            #     Values are of the form `projects/<project>/instances/<instance>`.
            # @!attribute [rw] page_size
            #   @return [::Integer]
            #     Number of databases to be returned in the response. If 0 or less,
            #     defaults to the server's maximum allowed page size.
            # @!attribute [rw] page_token
            #   @return [::String]
            #     If non-empty, `page_token` should contain a
            #     {::Google::Cloud::Spanner::Admin::Database::V1::ListDatabasesResponse#next_page_token next_page_token}
            #     from a previous
            #     {::Google::Cloud::Spanner::Admin::Database::V1::ListDatabasesResponse ListDatabasesResponse}.
            class ListDatabasesRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The response for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#list_databases ListDatabases}.
            # @!attribute [rw] databases
            #   @return [::Array<::Google::Cloud::Spanner::Admin::Database::V1::Database>]
            #     Databases that matched the request.
            # @!attribute [rw] next_page_token
            #   @return [::String]
            #     `next_page_token` can be sent in a subsequent
            #     {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#list_databases ListDatabases}
            #     call to fetch more of the matching databases.
            class ListDatabasesResponse
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#create_database CreateDatabase}.
            # @!attribute [rw] parent
            #   @return [::String]
            #     Required. The name of the instance that will serve the new database.
            #     Values are of the form `projects/<project>/instances/<instance>`.
            # @!attribute [rw] create_statement
            #   @return [::String]
            #     Required. A `CREATE DATABASE` statement, which specifies the ID of the
            #     new database.  The database ID must conform to the regular expression
            #     `[a-z][a-z0-9_\-]*[a-z0-9]` and be between 2 and 30 characters in length.
            #     If the database ID is a reserved word or if it contains a hyphen, the
            #     database ID must be enclosed in backticks (`` ` ``).
            # @!attribute [rw] extra_statements
            #   @return [::Array<::String>]
            #     Optional. A list of DDL statements to run inside the newly created
            #     database. Statements can create tables, indexes, etc. These
            #     statements execute atomically with the creation of the database:
            #     if there is an error in any statement, the database is not created.
            # @!attribute [rw] encryption_config
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::EncryptionConfig]
            #     Optional. The encryption configuration for the database. If this field is
            #     not specified, Cloud Spanner will encrypt/decrypt all data at rest using
            #     Google default encryption.
            class CreateDatabaseRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Metadata type for the operation returned by
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#create_database CreateDatabase}.
            # @!attribute [rw] database
            #   @return [::String]
            #     The database being created.
            class CreateDatabaseMetadata
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#get_database GetDatabase}.
            # @!attribute [rw] name
            #   @return [::String]
            #     Required. The name of the requested database. Values are of the form
            #     `projects/<project>/instances/<instance>/databases/<database>`.
            class GetDatabaseRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Enqueues the given DDL statements to be applied, in order but not
            # necessarily all at once, to the database schema at some point (or
            # points) in the future. The server checks that the statements
            # are executable (syntactically valid, name tables that exist, etc.)
            # before enqueueing them, but they may still fail upon
            # later execution (e.g., if a statement from another batch of
            # statements is applied first and it conflicts in some way, or if
            # there is some data-related problem like a `NULL` value in a column to
            # which `NOT NULL` would be added). If a statement fails, all
            # subsequent statements in the batch are automatically cancelled.
            #
            # Each batch of statements is assigned a name which can be used with
            # the Operations API to monitor
            # progress. See the
            # {::Google::Cloud::Spanner::Admin::Database::V1::UpdateDatabaseDdlRequest#operation_id operation_id}
            # field for more details.
            # @!attribute [rw] database
            #   @return [::String]
            #     Required. The database to update.
            # @!attribute [rw] statements
            #   @return [::Array<::String>]
            #     Required. DDL statements to be applied to the database.
            # @!attribute [rw] operation_id
            #   @return [::String]
            #     If empty, the new update request is assigned an
            #     automatically-generated operation ID. Otherwise, `operation_id`
            #     is used to construct the name of the resulting
            #     {::Google::Longrunning::Operation Operation}.
            #
            #     Specifying an explicit operation ID simplifies determining
            #     whether the statements were executed in the event that the
            #     {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#update_database_ddl UpdateDatabaseDdl}
            #     call is replayed, or the return value is otherwise lost: the
            #     {::Google::Cloud::Spanner::Admin::Database::V1::UpdateDatabaseDdlRequest#database database}
            #     and `operation_id` fields can be combined to form the
            #     {::Google::Longrunning::Operation#name name} of the resulting
            #     {::Google::Longrunning::Operation longrunning.Operation}:
            #     `<database>/operations/<operation_id>`.
            #
            #     `operation_id` should be unique within the database, and must be
            #     a valid identifier: `[a-z][a-z0-9_]*`. Note that
            #     automatically-generated operation IDs always begin with an
            #     underscore. If the named operation already exists,
            #     {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#update_database_ddl UpdateDatabaseDdl}
            #     returns `ALREADY_EXISTS`.
            class UpdateDatabaseDdlRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Metadata type for the operation returned by
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#update_database_ddl UpdateDatabaseDdl}.
            # @!attribute [rw] database
            #   @return [::String]
            #     The database being modified.
            # @!attribute [rw] statements
            #   @return [::Array<::String>]
            #     For an update this list contains all the statements. For an
            #     individual statement, this list contains only that statement.
            # @!attribute [rw] commit_timestamps
            #   @return [::Array<::Google::Protobuf::Timestamp>]
            #     Reports the commit timestamps of all statements that have
            #     succeeded so far, where `commit_timestamps[i]` is the commit
            #     timestamp for the statement `statements[i]`.
            # @!attribute [r] throttled
            #   @return [::Boolean]
            #     Output only. When true, indicates that the operation is throttled e.g
            #     due to resource constraints. When resources become available the operation
            #     will resume and this field will be false again.
            class UpdateDatabaseDdlMetadata
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#drop_database DropDatabase}.
            # @!attribute [rw] database
            #   @return [::String]
            #     Required. The database to be dropped.
            class DropDatabaseRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#get_database_ddl GetDatabaseDdl}.
            # @!attribute [rw] database
            #   @return [::String]
            #     Required. The database whose schema we wish to get.
            #     Values are of the form
            #     `projects/<project>/instances/<instance>/databases/<database>`
            class GetDatabaseDdlRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The response for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#get_database_ddl GetDatabaseDdl}.
            # @!attribute [rw] statements
            #   @return [::Array<::String>]
            #     A list of formatted DDL statements defining the schema of the database
            #     specified in the request.
            class GetDatabaseDdlResponse
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#list_database_operations ListDatabaseOperations}.
            # @!attribute [rw] parent
            #   @return [::String]
            #     Required. The instance of the database operations.
            #     Values are of the form `projects/<project>/instances/<instance>`.
            # @!attribute [rw] filter
            #   @return [::String]
            #     An expression that filters the list of returned operations.
            #
            #     A filter expression consists of a field name, a
            #     comparison operator, and a value for filtering.
            #     The value must be a string, a number, or a boolean. The comparison operator
            #     must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`.
            #     Colon `:` is the contains operator. Filter rules are not case sensitive.
            #
            #     The following fields in the {::Google::Longrunning::Operation Operation}
            #     are eligible for filtering:
            #
            #       * `name` - The name of the long-running operation
            #       * `done` - False if the operation is in progress, else true.
            #       * `metadata.@type` - the type of metadata. For example, the type string
            #          for
            #          {::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseMetadata RestoreDatabaseMetadata}
            #          is
            #          `type.googleapis.com/google.spanner.admin.database.v1.RestoreDatabaseMetadata`.
            #       * `metadata.<field_name>` - any field in metadata.value.
            #       * `error` - Error associated with the long-running operation.
            #       * `response.@type` - the type of response.
            #       * `response.<field_name>` - any field in response.value.
            #
            #     You can combine multiple expressions by enclosing each expression in
            #     parentheses. By default, expressions are combined with AND logic. However,
            #     you can specify AND, OR, and NOT logic explicitly.
            #
            #     Here are a few examples:
            #
            #       * `done:true` - The operation is complete.
            #       * `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.RestoreDatabaseMetadata) AND` \
            #         `(metadata.source_type:BACKUP) AND` \
            #         `(metadata.backup_info.backup:backup_howl) AND` \
            #         `(metadata.name:restored_howl) AND` \
            #         `(metadata.progress.start_time < \"2018-03-28T14:50:00Z\") AND` \
            #         `(error:*)` - Return operations where:
            #         * The operation's metadata type is
            #         {::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseMetadata RestoreDatabaseMetadata}.
            #         * The database is restored from a backup.
            #         * The backup name contains "backup_howl".
            #         * The restored database's name contains "restored_howl".
            #         * The operation started before 2018-03-28T14:50:00Z.
            #         * The operation resulted in an error.
            # @!attribute [rw] page_size
            #   @return [::Integer]
            #     Number of operations to be returned in the response. If 0 or
            #     less, defaults to the server's maximum allowed page size.
            # @!attribute [rw] page_token
            #   @return [::String]
            #     If non-empty, `page_token` should contain a
            #     {::Google::Cloud::Spanner::Admin::Database::V1::ListDatabaseOperationsResponse#next_page_token next_page_token}
            #     from a previous
            #     {::Google::Cloud::Spanner::Admin::Database::V1::ListDatabaseOperationsResponse ListDatabaseOperationsResponse}
            #     to the same `parent` and with the same `filter`.
            class ListDatabaseOperationsRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The response for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#list_database_operations ListDatabaseOperations}.
            # @!attribute [rw] operations
            #   @return [::Array<::Google::Longrunning::Operation>]
            #     The list of matching database [long-running
            #     operations][google.longrunning.Operation]. Each operation's name will be
            #     prefixed by the database's name. The operation's
            #     {::Google::Longrunning::Operation#metadata metadata} field type
            #     `metadata.type_url` describes the type of the metadata.
            # @!attribute [rw] next_page_token
            #   @return [::String]
            #     `next_page_token` can be sent in a subsequent
            #     {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#list_database_operations ListDatabaseOperations}
            #     call to fetch more of the matching metadata.
            class ListDatabaseOperationsResponse
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The request for
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#restore_database RestoreDatabase}.
            # @!attribute [rw] parent
            #   @return [::String]
            #     Required. The name of the instance in which to create the
            #     restored database. This instance must be in the same project and
            #     have the same instance configuration as the instance containing
            #     the source backup. Values are of the form
            #     `projects/<project>/instances/<instance>`.
            # @!attribute [rw] database_id
            #   @return [::String]
            #     Required. The id of the database to create and restore to. This
            #     database must not already exist. The `database_id` appended to
            #     `parent` forms the full database name of the form
            #     `projects/<project>/instances/<instance>/databases/<database_id>`.
            # @!attribute [rw] backup
            #   @return [::String]
            #     Name of the backup from which to restore.  Values are of the form
            #     `projects/<project>/instances/<instance>/backups/<backup>`.
            # @!attribute [rw] encryption_config
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseEncryptionConfig]
            #     Optional. An encryption configuration describing the encryption type and
            #     key resources in Cloud KMS used to encrypt/decrypt the database to restore
            #     to. If this field is not specified, the restored database will use the same
            #     encryption configuration as the backup by default, namely
            #     {::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseEncryptionConfig#encryption_type encryption_type}
            #     = `USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION`.
            class RestoreDatabaseRequest
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Encryption configuration for the restored database.
            # @!attribute [rw] encryption_type
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseEncryptionConfig::EncryptionType]
            #     Required. The encryption type of the restored database.
            # @!attribute [rw] kms_key_name
            #   @return [::String]
            #     Optional. The Cloud KMS key that will be used to encrypt/decrypt the
            #     restored database. This field should be set only when
            #     {::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseEncryptionConfig#encryption_type encryption_type}
            #     is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form
            #     `projects/<project>/locations/<location>/keyRings/<key_ring>/cryptoKeys/<kms_key_name>`.
            class RestoreDatabaseEncryptionConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Encryption types for the database to be restored.
              module EncryptionType
                # Unspecified. Do not use.
                ENCRYPTION_TYPE_UNSPECIFIED = 0

                # This is the default option when
                # {::Google::Cloud::Spanner::Admin::Database::V1::RestoreDatabaseEncryptionConfig encryption_config}
                # is not specified.
                USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION = 1

                # Use Google default encryption.
                GOOGLE_DEFAULT_ENCRYPTION = 2

                # Use customer managed encryption. If specified, `kms_key_name` must
                # must contain a valid Cloud KMS key.
                CUSTOMER_MANAGED_ENCRYPTION = 3
              end
            end

            # Metadata type for the long-running operation returned by
            # {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#restore_database RestoreDatabase}.
            # @!attribute [rw] name
            #   @return [::String]
            #     Name of the database being created and restored to.
            # @!attribute [rw] source_type
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::RestoreSourceType]
            #     The type of the restore source.
            # @!attribute [rw] backup_info
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::BackupInfo]
            #     Information about the backup used to restore the database.
            # @!attribute [rw] progress
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::OperationProgress]
            #     The progress of the
            #     {::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Client#restore_database RestoreDatabase}
            #     operation.
            # @!attribute [rw] cancel_time
            #   @return [::Google::Protobuf::Timestamp]
            #     The time at which cancellation of this operation was received.
            #     Operations.CancelOperation
            #     starts asynchronous cancellation on a long-running operation. The server
            #     makes a best effort to cancel the operation, but success is not guaranteed.
            #     Clients can use
            #     Operations.GetOperation or
            #     other methods to check whether the cancellation succeeded or whether the
            #     operation completed despite cancellation. On successful cancellation,
            #     the operation is not deleted; instead, it becomes an operation with
            #     an {::Google::Longrunning::Operation#error Operation.error} value with a
            #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
            #     `Code.CANCELLED`.
            # @!attribute [rw] optimize_database_operation_name
            #   @return [::String]
            #     If exists, the name of the long-running operation that will be used to
            #     track the post-restore optimization process to optimize the performance of
            #     the restored database, and remove the dependency on the restore source.
            #     The name is of the form
            #     `projects/<project>/instances/<instance>/databases/<database>/operations/<operation>`
            #     where the <database> is the name of database being created and restored to.
            #     The metadata type of the  long-running operation is
            #     {::Google::Cloud::Spanner::Admin::Database::V1::OptimizeRestoredDatabaseMetadata OptimizeRestoredDatabaseMetadata}.
            #     This long-running operation will be automatically created by the system
            #     after the RestoreDatabase long-running operation completes successfully.
            #     This operation will not be created if the restore was not successful.
            class RestoreDatabaseMetadata
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Metadata type for the long-running operation used to track the progress
            # of optimizations performed on a newly restored database. This long-running
            # operation is automatically created by the system after the successful
            # completion of a database restore, and cannot be cancelled.
            # @!attribute [rw] name
            #   @return [::String]
            #     Name of the restored database being optimized.
            # @!attribute [rw] progress
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::OperationProgress]
            #     The progress of the post-restore optimizations.
            class OptimizeRestoredDatabaseMetadata
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Indicates the type of the restore source.
            module RestoreSourceType
              # No restore associated.
              TYPE_UNSPECIFIED = 0

              # A backup was used as the source of the restore.
              BACKUP = 1
            end
          end
        end
      end
    end
  end
end
