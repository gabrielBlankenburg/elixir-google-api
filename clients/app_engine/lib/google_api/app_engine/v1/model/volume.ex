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

defmodule GoogleApi.AppEngine.V1.Model.Volume do
  @moduledoc """
  Volumes mounted within the app container. Only applicable in the App Engine flexible environment.

  ## Attributes

  - name (String.t): Unique name for the volume. Defaults to: `null`.
  - sizeGb (float()): Volume size in gigabytes. Defaults to: `null`.
  - volumeType (String.t): Underlying volume type, e.g. &#39;tmpfs&#39;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :sizeGb => any(),
          :volumeType => any()
        }

  field(:name)
  field(:sizeGb)
  field(:volumeType)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.Volume do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.Volume.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
