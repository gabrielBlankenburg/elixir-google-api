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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags do
  @moduledoc """
  MySQL flags for Cloud SQL instances.

  ## Attributes

  - name (String): The name of the flag. These flags are passed at instance startup, so include both MySQL server options and MySQL system variables. Flags should be specified with underscores, not hyphens. For more information, see Configuring MySQL Flags in the Google Cloud SQL documentation, as well as the official MySQL documentation for server options and system variables. Defaults to: `null`.
  - value (String): The value of the flag. Booleans should be set to on for true and off for false. This field must be omitted if the flag doesn&#39;t take a value. Defaults to: `null`.
  """

  defstruct [
    :"name",
    :"value"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags do
  def encode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Deserializer.serialize_non_nil(value, options)
  end
end
