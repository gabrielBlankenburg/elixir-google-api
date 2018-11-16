# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Mirror.V1.Api.Timeline do
  @moduledoc """
  API calls for all endpoints tagged `Timeline`.
  """

  alias GoogleApi.Mirror.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes an attachment from a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String.t): The ID of the timeline item the attachment belongs to.
  - attachment_id (String.t): The ID of the attachment.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def mirror_timeline_attachments_delete(
        connection,
        item_id,
        attachment_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/mirror/v1/timeline/{itemId}/attachments/{attachmentId}", %{
        "itemId" => URI.encode_www_form(item_id),
        "attachmentId" => URI.encode_www_form(attachment_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves an attachment on a timeline item by item ID and attachment ID.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String.t): The ID of the timeline item the attachment belongs to.
  - attachment_id (String.t): The ID of the attachment.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.Attachment.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_attachments_get(
        connection,
        item_id,
        attachment_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mirror/v1/timeline/{itemId}/attachments/{attachmentId}", %{
        "itemId" => URI.encode_www_form(item_id),
        "attachmentId" => URI.encode_www_form(attachment_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.Attachment{}])
  end

  @doc """
  Adds a new attachment to a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String.t): The ID of the timeline item the attachment belongs to.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.Attachment.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_attachments_insert(connection, item_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mirror/v1/timeline/{itemId}/attachments", %{
        "itemId" => URI.encode_www_form(item_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.Attachment{}])
  end

  @doc """
  Adds a new attachment to a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String.t): The ID of the timeline item the attachment belongs to.
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_insert_resumable(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def mirror_timeline_attachments_insert_resumable(
        connection,
        item_id,
        upload_type,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/mirror/v1/timeline/{itemId}/attachments", %{
        "itemId" => URI.encode_www_form(item_id)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Adds a new attachment to a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String.t): The ID of the timeline item the attachment belongs to.
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - data (String.t): The file to upload.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.Attachment{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_insert_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Mirror.V1.Model.Attachment.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_attachments_insert_simple(
        connection,
        item_id,
        upload_type,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/mirror/v1/timeline/{itemId}/attachments", %{
        "itemId" => URI.encode_www_form(item_id)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.Attachment{}])
  end

  @doc """
  Returns a list of attachments for a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - item_id (String.t): The ID of the timeline item whose attachments should be listed.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.AttachmentsListResponse{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_attachments_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.AttachmentsListResponse.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_attachments_list(connection, item_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mirror/v1/timeline/{itemId}/attachments", %{
        "itemId" => URI.encode_www_form(item_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.AttachmentsListResponse{}])
  end

  @doc """
  Deletes a timeline item.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String.t): The ID of the timeline item.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def mirror_timeline_delete(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/mirror/v1/timeline/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets a single timeline item by ID.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String.t): The ID of the timeline item.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_get(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mirror/v1/timeline/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineItem{}])
  end

  @doc """
  Inserts a new item into the timeline.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_insert(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mirror/v1/timeline")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineItem{}])
  end

  @doc """
  Inserts a new item into the timeline.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_insert_resumable(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def mirror_timeline_insert_resumable(connection, upload_type, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/mirror/v1/timeline")
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Inserts a new item into the timeline.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (TimelineItem): TimelineItem metadata.
  - data (String.t): The file to upload.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_insert_simple(
          Tesla.Env.client(),
          String.t(),
          GoogleApi.Mirror.V1.Model.TimelineItem.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_insert_simple(
        connection,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/mirror/v1/timeline")
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineItem{}])
  end

  @doc """
  Retrieves a list of timeline items for the authenticated user.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :bundleId (String.t): If provided, only items with the given bundleId will be returned.
    - :includeDeleted (boolean()): If true, tombstone records for deleted items will be returned.
    - :maxResults (integer()): The maximum number of items to include in the response, used for paging.
    - :orderBy (String.t): Controls the order in which timeline items are returned.
    - :pageToken (String.t): Token for the page of results to return.
    - :pinnedOnly (boolean()): If true, only pinned items will be returned.
    - :sourceItemId (String.t): If provided, only items with the given sourceItemId will be returned.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineListResponse{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.TimelineListResponse.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :bundleId => :query,
      :includeDeleted => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :pinnedOnly => :query,
      :sourceItemId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mirror/v1/timeline")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineListResponse{}])
  end

  @doc """
  Updates a timeline item in place. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String.t): The ID of the timeline item.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_patch(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/mirror/v1/timeline/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineItem{}])
  end

  @doc """
  Updates a timeline item in place.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String.t): The ID of the timeline item.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_update(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/mirror/v1/timeline/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineItem{}])
  end

  @doc """
  Updates a timeline item in place.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String.t): The ID of the timeline item.
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TimelineItem): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_update_resumable(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def mirror_timeline_update_resumable(
        connection,
        id,
        upload_type,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/resumable/upload/mirror/v1/timeline/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Updates a timeline item in place.

  ## Parameters

  - connection (GoogleApi.Mirror.V1.Connection): Connection to server
  - id (String.t): The ID of the timeline item.
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (TimelineItem): TimelineItem metadata.
  - data (String.t): The file to upload.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Mirror.V1.Model.TimelineItem{}} on success
  {:error, info} on failure
  """
  @spec mirror_timeline_update_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.Mirror.V1.Model.TimelineItem.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Mirror.V1.Model.TimelineItem.t()} | {:error, Tesla.Env.t()}
  def mirror_timeline_update_simple(
        connection,
        id,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/upload/mirror/v1/timeline/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Mirror.V1.Model.TimelineItem{}])
  end
end