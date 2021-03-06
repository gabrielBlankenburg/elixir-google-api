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

defmodule GoogleApi.AndroidEnterprise.V1.Model.StorePage do
  @moduledoc """
  Definition of a managed Google Play store page, made of a localized name and links to other pages. A page also contains clusters defined as a subcollection.

  ## Attributes

  - id (String.t): Unique ID of this page. Assigned by the server. Immutable once assigned. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#storePage\&quot;. Defaults to: `null`.
  - link ([String.t]): Ordered list of pages a user should be able to reach from this page. The list can&#39;t include this page. It is recommended that the basic pages are created first, before adding the links between pages.  The API doesn&#39;t verify that the pages exist or the pages are reachable. Defaults to: `null`.
  - name ([LocalizedText]): Ordered list of localized strings giving the name of this page. The text displayed is the one that best matches the user locale, or the first entry if there is no good match. There needs to be at least one entry. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :kind => any(),
          :link => list(any()),
          :name => list(GoogleApi.AndroidEnterprise.V1.Model.LocalizedText.t())
        }

  field(:id)
  field(:kind)
  field(:link, type: :list)
  field(:name, as: GoogleApi.AndroidEnterprise.V1.Model.LocalizedText, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.StorePage do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.StorePage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.StorePage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
