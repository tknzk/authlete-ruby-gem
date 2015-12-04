# :nodoc:
#
# Copyright (C) 2014-2015 Authlete, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


module Authlete
  module Model
    module Response
      # == Authlete::Model::Response::AuthorizationResponse class
      #
      # This class represents a response from Authlete's /api/auth/authorization API.
      class AuthorizationResponse < Authlete::Model::Response::Result
        # The flag which indicates whether the end-user authentication
        # must satisfy one of the requested ACRs. (BOOLEAN)
        attr_accessor :acr_essential

        # The list of ACRs (Authentication Context Class References)
        # requested by the client application.
        # The value come from (1) "acr" claim in "claims" request parameter,
        # (2) "acr_values" request parameter or (3) "default_acr_values"
        # configuration parameter of the client application.
        # (String array)
        attr_accessor :acrs

        # The next action that the service implementation should take.
        # (String)
        attr_accessor :action

        # The list of preferred languages and scripts for claim
        # values contained in the ID token. The value comes from
        # "claims_locales" request parameter. (String array)
        attr_accessor :claim_locales

        # The list of claims that the client application requests
        # to be embedded in the ID token. The value comes from
        # "scope" and "claims" request parameters of
        # the original authorization request. (String array)
        attr_accessor :claims

        # The information about the client application which has made
        # the authorization request. (Client)
        attr_accessor :client

        # The display mode which the client application requests
        # by "display" request parameter. When the authorization
        # request does not contain "display" request parameter,
        # this method returns "PAGE" as the default value.
        # (String)
        attr_accessor :display

        # The value of login hint, which is specified by the client
        # application using "login_hint" request parameter.
        # (String)
        attr_accessor :login_hint

        # The prompt that the UI displayed to the end-user must satisfy
        # at least. The value comes from "prompt" request parameter.
        # When the authorization request does not contain "prompt"
        # parameter, this method returns "CONSENT CONSENT" as
        # the default value. (String)
        attr_accessor :lowest_prompt

        # The maximum authentication age which is the allowable
        # elapsed time in seconds since the last time the end-user
        # was actively authenticated by the service implementation.
        # The value comes from "max_age" request parameter
        # or "default_max_age" configuration parameter of
        # the client application. 0 may be returned which means
        # that the max age constraint does not have to be imposed.
        # (Integer)
        attr_accessor :max_age

        # The response content which can be used to generate a response
        # to the client application. The format of the value varies
        # depending on the value of "action". (String)
        attr_accessor :response_content

        # The scopes which the client application requests by "scope"
        # request parameter. When the authorization request does
        # not contain "scope" request parameter, this method
        # returns a list of scopes which are marked as default by the
        # service implementation. "null" may be returned if the
        # authorization request does not contain valid scopes and none
        # of registered scopes is marked as default.
        # (Scope array)
        attr_accessor :scopes

        # The subject (= end-user's login ID) that the client
        # application requests. The value comes from "sub"
        # claim in "claims" request parameter. This method
        # may return null (probably in most cases).
        # (String)
        attr_accessor :subject

        # The ticket which has been issued to the service implementation
        # from Authlete's /api/auth/authorization API. This ticket is
        # needed for /api/auth/authorization/issue API and
        # /api/auth/authorization/fail API. (String)
        attr_accessor :ticket

        # The list of preferred languages and scripts for the user
        # interface. The value comes from "ui_locales" request
        # parameter. (String array)
        attr_accessor :ui_locales

        private

        # The constructor which takes a hash that represents a JSON response
        # from Authlete's /api/auth/authorization API.
        def initialize(hash = {})
          super(hash)

          @acr_essential    = extract_value(hash, :acrEssential)
          @acrs             = extract_value(hash, :acrs)
          @action           = extract_value(hash, :action)
          @claim_locales    = extract_value(hash, :claimLocales)
          @claims           = extract_value(hash, :claims)
          @client           = Authlete::Model::Client.new(extract_value(hash, :client))
          @display          = extract_value(hash, :display)
          @login_hint       = extract_value(hash, :loginHint)
          @lowest_prompt    = extract_value(hash, :lowestPrompt)
          @max_age          = extract_value(hash, :maxAge)
          @response_content = extract_value(hash, :responseContent)
          @scopes           = extract_array_value(hash, :scopes) do |element|
            Authlete::Model::Scope.parse(element)
          end
          @subject          = extract_value(hash, :subject)
          @ticket           = extract_value(hash, :ticket)
          @ui_locales       = extract_value(hash, :uiLocales)
        end
      end
    end
  end
end