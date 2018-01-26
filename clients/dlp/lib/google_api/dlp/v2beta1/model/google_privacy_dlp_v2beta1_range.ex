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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Range do
  @moduledoc """
  Generic half-open interval [start, end)

  ## Attributes

  - end (String): Index of the last character of the range (exclusive). Defaults to: `null`.
  - start (String): Index of the first character of the range (inclusive). Defaults to: `null`.
  """

  defstruct [
    :"end",
    :"start"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Range do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Range do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end
