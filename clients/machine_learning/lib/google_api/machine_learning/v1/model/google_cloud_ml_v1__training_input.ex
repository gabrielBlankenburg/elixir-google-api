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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingInput do
  @moduledoc """
  Represents input parameters for a training job. When using the gcloud command to submit your training job, you can specify the input parameters as command-line arguments and/or in a YAML configuration file referenced from the --config command-line argument. For details, see the guide to &lt;a href&#x3D;\&quot;/ml-engine/docs/tensorflow/training-jobs\&quot;&gt;submitting a training job&lt;/a&gt;.

  ## Attributes

  - args ([String.t]): Optional. Command line arguments to pass to the program. Defaults to: `null`.
  - hyperparameters (GoogleCloudMlV1HyperparameterSpec): Optional. The set of Hyperparameters to tune. Defaults to: `null`.
  - jobDir (String.t): Optional. A Google Cloud Storage path in which to store training outputs and other data needed for training. This path is passed to your TensorFlow program as the &#39;--job-dir&#39; command-line argument. The benefit of specifying this field is that Cloud ML validates the path for use in training. Defaults to: `null`.
  - masterType (String.t): Optional. Specifies the type of virtual machine to use for your training job&#39;s master worker.  The following types are supported:  &lt;dl&gt;   &lt;dt&gt;standard&lt;/dt&gt;   &lt;dd&gt;   A basic machine configuration suitable for training simple models with   small to moderate datasets.   &lt;/dd&gt;   &lt;dt&gt;large_model&lt;/dt&gt;   &lt;dd&gt;   A machine with a lot of memory, specially suited for parameter servers   when your model is large (having many hidden layers or layers with very   large numbers of nodes).   &lt;/dd&gt;   &lt;dt&gt;complex_model_s&lt;/dt&gt;   &lt;dd&gt;   A machine suitable for the master and workers of the cluster when your   model requires more computation than the standard machine can handle   satisfactorily.   &lt;/dd&gt;   &lt;dt&gt;complex_model_m&lt;/dt&gt;   &lt;dd&gt;   A machine with roughly twice the number of cores and roughly double the   memory of &lt;i&gt;complex_model_s&lt;/i&gt;.   &lt;/dd&gt;   &lt;dt&gt;complex_model_l&lt;/dt&gt;   &lt;dd&gt;   A machine with roughly twice the number of cores and roughly double the   memory of &lt;i&gt;complex_model_m&lt;/i&gt;.   &lt;/dd&gt;   &lt;dt&gt;standard_gpu&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;standard&lt;/i&gt; that   also includes a single NVIDIA Tesla K80 GPU. See more about   &lt;a href&#x3D;\&quot;/ml-engine/docs/tensorflow/using-gpus\&quot;&gt;using GPUs to   train your model&lt;/a&gt;.   &lt;/dd&gt;   &lt;dt&gt;complex_model_m_gpu&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;complex_model_m&lt;/i&gt; that also includes   four NVIDIA Tesla K80 GPUs.   &lt;/dd&gt;   &lt;dt&gt;complex_model_l_gpu&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;complex_model_l&lt;/i&gt; that also includes   eight NVIDIA Tesla K80 GPUs.   &lt;/dd&gt;   &lt;dt&gt;standard_p100&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;standard&lt;/i&gt; that   also includes a single NVIDIA Tesla P100 GPU.   &lt;/dd&gt;   &lt;dt&gt;complex_model_m_p100&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;complex_model_m&lt;/i&gt; that also includes   four NVIDIA Tesla P100 GPUs.   &lt;/dd&gt;   &lt;dt&gt;standard_v100&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;standard&lt;/i&gt; that   also includes a single NVIDIA Tesla V100 GPU. The availability of these   GPUs is in the &lt;i&gt;Beta&lt;/i&gt; launch stage.   &lt;/dd&gt;   &lt;dt&gt;large_model_v100&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;large_model&lt;/i&gt; that   also includes a single NVIDIA Tesla V100 GPU. The availability of these   GPUs is in the &lt;i&gt;Beta&lt;/i&gt; launch stage.   &lt;/dd&gt;   &lt;dt&gt;complex_model_m_v100&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;complex_model_m&lt;/i&gt; that   also includes four NVIDIA Tesla V100 GPUs. The availability of these   GPUs is in the &lt;i&gt;Beta&lt;/i&gt; launch stage.   &lt;/dd&gt;   &lt;dt&gt;complex_model_l_v100&lt;/dt&gt;   &lt;dd&gt;   A machine equivalent to &lt;i&gt;complex_model_l&lt;/i&gt; that   also includes eight NVIDIA Tesla V100 GPUs. The availability of these   GPUs is in the &lt;i&gt;Beta&lt;/i&gt; launch stage.   &lt;/dd&gt;   &lt;dt&gt;cloud_tpu&lt;/dt&gt;   &lt;dd&gt;   A TPU VM including one Cloud TPU. See more about   &lt;a href&#x3D;\&quot;/ml-engine/docs/tensorflow/using-tpus\&quot;&gt;using TPUs to train   your model&lt;/a&gt;.   &lt;/dd&gt; &lt;/dl&gt;  You must set this value when &#x60;scaleTier&#x60; is set to &#x60;CUSTOM&#x60;. Defaults to: `null`.
  - packageUris ([String.t]): Required. The Google Cloud Storage location of the packages with the training program and any additional dependencies. The maximum number of package URIs is 100. Defaults to: `null`.
  - parameterServerCount (String.t): Optional. The number of parameter server replicas to use for the training job. Each replica in the cluster will be of the type specified in &#x60;parameter_server_type&#x60;.  This value can only be used when &#x60;scale_tier&#x60; is set to &#x60;CUSTOM&#x60;.If you set this value, you must also set &#x60;parameter_server_type&#x60;. Defaults to: `null`.
  - parameterServerType (String.t): Optional. Specifies the type of virtual machine to use for your training job&#39;s parameter server.  The supported values are the same as those described in the entry for &#x60;master_type&#x60;.  This value must be present when &#x60;scaleTier&#x60; is set to &#x60;CUSTOM&#x60; and &#x60;parameter_server_count&#x60; is greater than zero. Defaults to: `null`.
  - pythonModule (String.t): Required. The Python module name to run after installing the packages. Defaults to: `null`.
  - pythonVersion (String.t): Optional. The version of Python used in training. If not set, the default version is &#39;2.7&#39;. Python &#39;3.5&#39; is available when &#x60;runtime_version&#x60; is set to &#39;1.4&#39; and above. Python &#39;2.7&#39; works with all supported &lt;a href&#x3D;\&quot;/ml-engine/docs/runtime-version-list\&quot;&gt;runtime versions&lt;/a&gt;. Defaults to: `null`.
  - region (String.t): Required. The Google Compute Engine region to run the training job in. See the &lt;a href&#x3D;\&quot;/ml-engine/docs/tensorflow/regions\&quot;&gt;available regions&lt;/a&gt; for ML Engine services. Defaults to: `null`.
  - runtimeVersion (String.t): Optional. The Cloud ML Engine runtime version to use for training. If not set, Cloud ML Engine uses the default stable version, 1.0. For more information, see the &lt;a href&#x3D;\&quot;/ml-engine/docs/runtime-version-list\&quot;&gt;runtime version list&lt;/a&gt; and &lt;a href&#x3D;\&quot;/ml-engine/docs/versioning\&quot;&gt;how to manage runtime versions&lt;/a&gt;. Defaults to: `null`.
  - scaleTier (String.t): Required. Specifies the machine types, the number of replicas for workers and parameter servers. Defaults to: `null`.
    - Enum - one of [BASIC, STANDARD_1, PREMIUM_1, BASIC_GPU, BASIC_TPU, CUSTOM]
  - workerCount (String.t): Optional. The number of worker replicas to use for the training job. Each replica in the cluster will be of the type specified in &#x60;worker_type&#x60;.  This value can only be used when &#x60;scale_tier&#x60; is set to &#x60;CUSTOM&#x60;. If you set this value, you must also set &#x60;worker_type&#x60;. Defaults to: `null`.
  - workerType (String.t): Optional. Specifies the type of virtual machine to use for your training job&#39;s worker nodes.  The supported values are the same as those described in the entry for &#x60;masterType&#x60;.  This value must be present when &#x60;scaleTier&#x60; is set to &#x60;CUSTOM&#x60; and &#x60;workerCount&#x60; is greater than zero. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => list(any()),
          :hyperparameters =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterSpec.t(),
          :jobDir => any(),
          :masterType => any(),
          :packageUris => list(any()),
          :parameterServerCount => any(),
          :parameterServerType => any(),
          :pythonModule => any(),
          :pythonVersion => any(),
          :region => any(),
          :runtimeVersion => any(),
          :scaleTier => any(),
          :workerCount => any(),
          :workerType => any()
        }

  field(:args, type: :list)

  field(
    :hyperparameters,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterSpec
  )

  field(:jobDir)
  field(:masterType)
  field(:packageUris, type: :list)
  field(:parameterServerCount)
  field(:parameterServerType)
  field(:pythonModule)
  field(:pythonVersion)
  field(:region)
  field(:runtimeVersion)
  field(:scaleTier)
  field(:workerCount)
  field(:workerType)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingInput do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
