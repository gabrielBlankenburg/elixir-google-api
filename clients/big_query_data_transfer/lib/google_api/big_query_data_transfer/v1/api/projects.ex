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

defmodule GoogleApi.BigQueryDataTransfer.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.BigQueryDataTransfer.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns true if valid credentials exist for the given data source and requesting user. Some data sources doesn&#39;t support service account, so we need to talk to them on behalf of the end user. This API just checks whether we have OAuth token for the particular user, which is a pre-requisite before user can create a transfer config.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - name (String.t): The data source in the form: &#x60;projects/{project_id}/dataSources/{data_source_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (CheckValidCredsRequest): 

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.CheckValidCredsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_data_sources_check_valid_creds(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.CheckValidCredsResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_data_sources_check_valid_creds(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:checkValidCreds", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.CheckValidCredsResponse{}]
    )
  end

  @doc """
  Lists supported data sources and returns their settings, which can be used for UI rendering.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - parent (String.t): The BigQuery project id for which data sources should be returned. Must be in the form: &#x60;projects/{project_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Page size. The default page size is the maximum value of 1000 results.
    - :pageToken (String.t): Pagination token, which can be used to request a specific page of &#x60;ListDataSourcesRequest&#x60; list results. For multiple-page results, &#x60;ListDataSourcesResponse&#x60; outputs a &#x60;next_page&#x60; token, which can be used as the &#x60;page_token&#x60; value to request the next page of list results.

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.ListDataSourcesResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_data_sources_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.ListDataSourcesResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_data_sources_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/dataSources", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.ListDataSourcesResponse{}]
    )
  end

  @doc """
  Lists information about the supported locations for this service.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - name (String.t): The resource that owns the locations collection, if applicable.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :filter (String.t): The standard list filter.
    - :pageSize (integer()): The standard list page size.
    - :pageToken (String.t): The standard list page token.

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.ListLocationsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_locations_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.ListLocationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_locations_list(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/locations", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.ListLocationsResponse{}]
    )
  end

  @doc """
  Creates a new data transfer configuration.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - parent (String.t): The BigQuery project id where the transfer configuration should be created. Must be in the format projects/{project_id}/locations/{location_id} If specified location and location of the destination bigquery dataset do not match - the request will fail.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :authorizationCode (String.t): Optional OAuth2 authorization code to use with this transfer configuration. This is required if new credentials are needed, as indicated by &#x60;CheckValidCreds&#x60;. In order to obtain authorization_code, please make a request to https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id&#x3D;&lt;datatransferapiclientid&gt;&amp;scope&#x3D;&lt;data_source_scopes&gt;&amp;redirect_uri&#x3D;&lt;redirect_uri&gt;  * client_id should be OAuth client_id of BigQuery DTS API for the given   data source returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. * redirect_uri is an optional parameter. If not specified, then   authorization code is posted to the opener of authorization flow window.   Otherwise it will be sent to the redirect uri. A special value of   urn:ietf:wg:oauth:2.0:oob means that authorization code should be   returned in the title bar of the browser, with the page text prompting   the user to copy the code and paste it in the application.
    - :body (TransferConfig): 

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_create(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :authorizationCode => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/transferConfigs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig{}]
    )
  end

  @doc """
  Returns information about all data transfers in the project.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - parent (String.t): The BigQuery project id for which data sources should be returned: &#x60;projects/{project_id}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :dataSourceIds ([String.t]): When specified, only configurations of requested data sources are returned.
    - :pageSize (integer()): Page size. The default page size is the maximum value of 1000 results.
    - :pageToken (String.t): Pagination token, which can be used to request a specific page of &#x60;ListTransfersRequest&#x60; list results. For multiple-page results, &#x60;ListTransfersResponse&#x60; outputs a &#x60;next_page&#x60; token, which can be used as the &#x60;page_token&#x60; value to request the next page of list results.

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :dataSourceIds => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/transferConfigs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferConfigsResponse{}]
    )
  end

  @doc """
  Updates a data transfer configuration. All fields must be set, even if they are not updated.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - name (String.t): The resource name of the transfer config. Transfer config names have the form of &#x60;projects/{project_id}/locations/{region}/transferConfigs/{config_id}&#x60;. The name is automatically generated based on the config_id specified in CreateTransferConfigRequest along with project_id and region. If config_id is not provided, usually a uuid, even though it is not guaranteed or required, will be generated for config_id.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :authorizationCode (String.t): Optional OAuth2 authorization code to use with this transfer configuration. If it is provided, the transfer configuration will be associated with the authorizing user. In order to obtain authorization_code, please make a request to https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id&#x3D;&lt;datatransferapiclientid&gt;&amp;scope&#x3D;&lt;data_source_scopes&gt;&amp;redirect_uri&#x3D;&lt;redirect_uri&gt;  * client_id should be OAuth client_id of BigQuery DTS API for the given   data source returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. * redirect_uri is an optional parameter. If not specified, then   authorization code is posted to the opener of authorization flow window.   Otherwise it will be sent to the redirect uri. A special value of   urn:ietf:wg:oauth:2.0:oob means that authorization code should be   returned in the title bar of the browser, with the page text prompting   the user to copy the code and paste it in the application.
    - :updateMask (String.t): Required list of fields to be updated in this request.
    - :body (TransferConfig): 

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_patch(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_patch(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :authorizationCode => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig{}]
    )
  end

  @doc """
  Deletes the specified transfer run.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - name (String.t): The field will contain name of the resource requested, for example: &#x60;projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_runs_delete(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_runs_delete(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.Empty{}])
  end

  @doc """
  Returns information about the particular transfer run.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - name (String.t): The field will contain name of the resource requested, for example: &#x60;projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_runs_get(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun.t()} | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_runs_get(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun{}])
  end

  @doc """
  Returns information about running and completed jobs.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - parent (String.t): Name of transfer configuration for which transfer runs should be retrieved. Format of transfer configuration resource name is: &#x60;projects/{project_id}/transferConfigs/{config_id}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Page size. The default page size is the maximum value of 1000 results.
    - :pageToken (String.t): Pagination token, which can be used to request a specific page of &#x60;ListTransferRunsRequest&#x60; list results. For multiple-page results, &#x60;ListTransferRunsResponse&#x60; outputs a &#x60;next_page&#x60; token, which can be used as the &#x60;page_token&#x60; value to request the next page of list results.
    - :runAttempt (String.t): Indicates how run attempts are to be pulled.
    - :states ([String.t]): When specified, only transfer runs with requested states are returned.

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferRunsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_runs_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferRunsResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_runs_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query,
      :runAttempt => :query,
      :states => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/runs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferRunsResponse{}]
    )
  end

  @doc """
  Returns user facing log messages for the data transfer run.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - parent (String.t): Transfer run name in the form: &#x60;projects/{project_id}/transferConfigs/{config_Id}/runs/{run_id}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :messageTypes ([String.t]): Message types to return. If not populated - INFO, WARNING and ERROR messages are returned.
    - :pageSize (integer()): Page size. The default page size is the maximum value of 1000 results.
    - :pageToken (String.t): Pagination token, which can be used to request a specific page of &#x60;ListTransferLogsRequest&#x60; list results. For multiple-page results, &#x60;ListTransferLogsResponse&#x60; outputs a &#x60;next_page&#x60; token, which can be used as the &#x60;page_token&#x60; value to request the next page of list results.

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferLogsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_runs_transfer_logs_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferLogsResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_runs_transfer_logs_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :messageTypes => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/transferLogs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.ListTransferLogsResponse{}]
    )
  end

  @doc """
  Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range.

  ## Parameters

  - connection (GoogleApi.BigQueryDataTransfer.V1.Connection): Connection to server
  - parent (String.t): Transfer configuration name in the form: &#x60;projects/{project_id}/transferConfigs/{config_id}&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (ScheduleTransferRunsRequest): 

  ## Returns

  {:ok, %GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleTransferRunsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquerydatatransfer_projects_transfer_configs_schedule_runs(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleTransferRunsResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquerydatatransfer_projects_transfer_configs_schedule_runs(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}:scheduleRuns", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleTransferRunsResponse{}]
    )
  end
end
