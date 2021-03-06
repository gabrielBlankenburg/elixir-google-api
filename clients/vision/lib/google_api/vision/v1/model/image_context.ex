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

defmodule GoogleApi.Vision.V1.Model.ImageContext do
  @moduledoc """
  Image context and/or feature-specific parameters.

  ## Attributes

  - cropHintsParams (CropHintsParams): Parameters for crop hints annotation request. Defaults to: `null`.
  - languageHints ([String.t]): List of languages to use for TEXT_DETECTION. In most cases, an empty value yields the best results since it enables automatic language detection. For languages based on the Latin alphabet, setting &#x60;language_hints&#x60; is not needed. In rare cases, when the language of the text in the image is known, setting a hint will help get better results (although it will be a significant hindrance if the hint is wrong). Text detection returns an error if one or more of the specified languages is not one of the [supported languages](/vision/docs/languages). Defaults to: `null`.
  - latLongRect (LatLongRect): Not used. Defaults to: `null`.
  - productSearchParams (ProductSearchParams): Parameters for product search. Defaults to: `null`.
  - webDetectionParams (WebDetectionParams): Parameters for web detection. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cropHintsParams => GoogleApi.Vision.V1.Model.CropHintsParams.t(),
          :languageHints => list(any()),
          :latLongRect => GoogleApi.Vision.V1.Model.LatLongRect.t(),
          :productSearchParams => GoogleApi.Vision.V1.Model.ProductSearchParams.t(),
          :webDetectionParams => GoogleApi.Vision.V1.Model.WebDetectionParams.t()
        }

  field(:cropHintsParams, as: GoogleApi.Vision.V1.Model.CropHintsParams)
  field(:languageHints, type: :list)
  field(:latLongRect, as: GoogleApi.Vision.V1.Model.LatLongRect)
  field(:productSearchParams, as: GoogleApi.Vision.V1.Model.ProductSearchParams)
  field(:webDetectionParams, as: GoogleApi.Vision.V1.Model.WebDetectionParams)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.ImageContext do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.ImageContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.ImageContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
