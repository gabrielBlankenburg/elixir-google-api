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

defmodule GoogleApi.Testing.V1.Model.Environment do
  @moduledoc """
  The environment in which the test is run.

  ## Attributes

  - androidDevice (AndroidDevice): An Android device which must be used with an Android test. Defaults to: `null`.
  - iosDevice (IosDevice): An iOS device which must be used with an iOS test. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidDevice => GoogleApi.Testing.V1.Model.AndroidDevice.t(),
          :iosDevice => GoogleApi.Testing.V1.Model.IosDevice.t()
        }

  field(:androidDevice, as: GoogleApi.Testing.V1.Model.AndroidDevice)
  field(:iosDevice, as: GoogleApi.Testing.V1.Model.IosDevice)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.Environment do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end