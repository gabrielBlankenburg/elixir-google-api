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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType do
  @moduledoc """
  Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.

  ## Attributes

  - detectionRules ([GooglePrivacyDlpV2DetectionRule]): Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the &#x60;surrogate_type&#x60; CustomInfoType. Defaults to: `null`.
  - dictionary (GooglePrivacyDlpV2Dictionary): A list of phrases to detect as a CustomInfoType. Defaults to: `null`.
  - infoType (GooglePrivacyDlpV2InfoType): All CustomInfoTypes must have a name that does not conflict with built-in InfoTypes or other CustomInfoTypes. Defaults to: `null`.
  - likelihood (String.t): Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to &#x60;VERY_LIKELY&#x60; if not specified. Defaults to: `null`.
    - Enum - one of [LIKELIHOOD_UNSPECIFIED, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - regex (GooglePrivacyDlpV2Regex): Regular expression based CustomInfoType. Defaults to: `null`.
  - surrogateType (GooglePrivacyDlpV2SurrogateType): Message for detecting output from deidentification transformations that support reversing. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectionRules => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DetectionRule.t()),
          :dictionary => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Dictionary.t(),
          :infoType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t(),
          :likelihood => any(),
          :regex => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.t(),
          :surrogateType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SurrogateType.t()
        }

  field(:detectionRules, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DetectionRule, type: :list)
  field(:dictionary, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Dictionary)
  field(:infoType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType)
  field(:likelihood)
  field(:regex, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex)
  field(:surrogateType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SurrogateType)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end