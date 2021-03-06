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

defmodule GoogleApi.DFAReporting.V28.Model.CreativeAssetMetadata do
  @moduledoc """
  CreativeAssets contains properties of a creative asset file which will be uploaded or has already been uploaded. Refer to the creative sample code for how to upload assets and insert a creative.

  ## Attributes

  - assetIdentifier (CreativeAssetId): ID of the creative asset. This is a required field. Defaults to: `null`.
  - clickTags ([ClickTag]): List of detected click tags for assets. This is a read-only auto-generated field. Defaults to: `null`.
  - detectedFeatures ([String.t]): List of feature dependencies for the creative asset that are detected by Campaign Manager. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative correctly. This is a read-only, auto-generated field. Defaults to: `null`.
    - Enum - one of 
  - id (String.t): Numeric ID of the asset. This is a read-only, auto-generated field. Defaults to: `null`.
  - idDimensionValue (DimensionValue): Dimension value for the numeric ID of the asset. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#creativeAssetMetadata\&quot;. Defaults to: `null`.
  - warnedValidationRules ([String.t]): Rules validated during code generation that generated a warning. This is a read-only, auto-generated field.  Possible values are: - \&quot;ADMOB_REFERENCED\&quot; - \&quot;ASSET_FORMAT_UNSUPPORTED_DCM\&quot; - \&quot;ASSET_INVALID\&quot; - \&quot;CLICK_TAG_HARD_CODED\&quot; - \&quot;CLICK_TAG_INVALID\&quot; - \&quot;CLICK_TAG_IN_GWD\&quot; - \&quot;CLICK_TAG_MISSING\&quot; - \&quot;CLICK_TAG_MORE_THAN_ONE\&quot; - \&quot;CLICK_TAG_NON_TOP_LEVEL\&quot; - \&quot;COMPONENT_UNSUPPORTED_DCM\&quot; - \&quot;ENABLER_UNSUPPORTED_METHOD_DCM\&quot; - \&quot;EXTERNAL_FILE_REFERENCED\&quot; - \&quot;FILE_DETAIL_EMPTY\&quot; - \&quot;FILE_TYPE_INVALID\&quot; - \&quot;GWD_PROPERTIES_INVALID\&quot; - \&quot;HTML5_FEATURE_UNSUPPORTED\&quot; - \&quot;LINKED_FILE_NOT_FOUND\&quot; - \&quot;MAX_FLASH_VERSION_11\&quot; - \&quot;MRAID_REFERENCED\&quot; - \&quot;NOT_SSL_COMPLIANT\&quot; - \&quot;ORPHANED_ASSET\&quot; - \&quot;PRIMARY_HTML_MISSING\&quot; - \&quot;SVG_INVALID\&quot; - \&quot;ZIP_INVALID\&quot; Defaults to: `null`.
    - Enum - one of 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetIdentifier => GoogleApi.DFAReporting.V28.Model.CreativeAssetId.t(),
          :clickTags => list(GoogleApi.DFAReporting.V28.Model.ClickTag.t()),
          :detectedFeatures => list(any()),
          :id => any(),
          :idDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :kind => any(),
          :warnedValidationRules => list(any())
        }

  field(:assetIdentifier, as: GoogleApi.DFAReporting.V28.Model.CreativeAssetId)
  field(:clickTags, as: GoogleApi.DFAReporting.V28.Model.ClickTag, type: :list)
  field(:detectedFeatures, type: :list)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:kind)
  field(:warnedValidationRules, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CreativeAssetMetadata do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CreativeAssetMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.CreativeAssetMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
