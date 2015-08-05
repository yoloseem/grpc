# Copyright 2015, Google Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
#     * Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
# copyright notice, this list of conditions and the following disclaimer
# in the documentation and/or other materials provided with the
# distribution.
#     * Neither the name of Google Inc. nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: test/cpp/interop/messages.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "grpc.testing.Payload" do
    optional :type, :enum, 1, "grpc.testing.PayloadType"
    optional :body, :string, 2
  end
  add_message "grpc.testing.SimpleRequest" do
    optional :response_type, :enum, 1, "grpc.testing.PayloadType"
    optional :response_size, :int32, 2
    optional :payload, :message, 3, "grpc.testing.Payload"
    optional :fill_username, :bool, 4
    optional :fill_oauth_scope, :bool, 5
  end
  add_message "grpc.testing.SimpleResponse" do
    optional :payload, :message, 1, "grpc.testing.Payload"
    optional :username, :string, 2
    optional :oauth_scope, :string, 3
  end
  add_message "grpc.testing.StreamingInputCallRequest" do
    optional :payload, :message, 1, "grpc.testing.Payload"
  end
  add_message "grpc.testing.StreamingInputCallResponse" do
    optional :aggregated_payload_size, :int32, 1
  end
  add_message "grpc.testing.ResponseParameters" do
    optional :size, :int32, 1
    optional :interval_us, :int32, 2
  end
  add_message "grpc.testing.StreamingOutputCallRequest" do
    optional :response_type, :enum, 1, "grpc.testing.PayloadType"
    repeated :response_parameters, :message, 2, "grpc.testing.ResponseParameters"
    optional :payload, :message, 3, "grpc.testing.Payload"
  end
  add_message "grpc.testing.StreamingOutputCallResponse" do
    optional :payload, :message, 1, "grpc.testing.Payload"
  end
  add_enum "grpc.testing.PayloadType" do
    value :COMPRESSABLE, 0
    value :UNCOMPRESSABLE, 1
    value :RANDOM, 2
  end
end

module Grpc
  module Testing
    Payload = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.Payload").msgclass
    SimpleRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.SimpleRequest").msgclass
    SimpleResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.SimpleResponse").msgclass
    StreamingInputCallRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.StreamingInputCallRequest").msgclass
    StreamingInputCallResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.StreamingInputCallResponse").msgclass
    ResponseParameters = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.ResponseParameters").msgclass
    StreamingOutputCallRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.StreamingOutputCallRequest").msgclass
    StreamingOutputCallResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.StreamingOutputCallResponse").msgclass
    PayloadType = Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.testing.PayloadType").enummodule
  end
end