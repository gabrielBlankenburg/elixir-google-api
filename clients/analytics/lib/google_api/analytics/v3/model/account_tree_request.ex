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

defmodule GoogleApi.Analytics.V3.Model.AccountTreeRequest do
  @moduledoc """
  JSON template for an Analytics account tree requests. The account tree request is used in the provisioning api to create an account, property, and view (profile). It contains the basic information required to make these fields.

  ## Attributes

  - accountName (String.t):  Defaults to: `null`.
  - accountSettings (AccountTreeRequestAccountSettings):  Defaults to: `null`.
  - kind (String.t): Resource type for account ticket. Defaults to: `null`.
  - profileName (String.t):  Defaults to: `null`.
  - timezone (String.t):  Defaults to: `null`.
  - webpropertyName (String.t):  Defaults to: `null`.
  - websiteUrl (String.t):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountName => any(),
          :accountSettings => GoogleApi.Analytics.V3.Model.AccountTreeRequestAccountSettings.t(),
          :kind => any(),
          :profileName => any(),
          :timezone => any(),
          :webpropertyName => any(),
          :websiteUrl => any()
        }

  field(:accountName)
  field(:accountSettings, as: GoogleApi.Analytics.V3.Model.AccountTreeRequestAccountSettings)
  field(:kind)
  field(:profileName)
  field(:timezone)
  field(:webpropertyName)
  field(:websiteUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.AccountTreeRequest do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.AccountTreeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.AccountTreeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end