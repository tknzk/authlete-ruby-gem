# :nodoc:
#
# Copyright (C) 2014-2022 Authlete, Inc.
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


require 'json'


module Authlete
  module Model
    class Client < Authlete::Model::Base
      include Authlete::Model::Hashable
      include Authlete::Utility

      attr_accessor :number

      attr_accessor :serviceNumber
      alias_method  :service_number,  :serviceNumber
      alias_method  :service_number=, :serviceNumber=

      attr_accessor :developer

      attr_accessor :clientId
      alias_method  :client_id,  :clientId
      alias_method  :client_id=, :clientId=

      attr_accessor :clientIdAlias
      alias_method  :client_id_alias,  :clientIdAlias
      alias_method  :client_id_alias=, :clientIdAlias=

      attr_accessor :clientIdAliasEnabled
      alias_method  :client_id_alias_enabled,  :clientIdAliasEnabled
      alias_method  :client_id_alias_enabled=, :clientIdAliasEnabled=

      attr_accessor :clientSecret
      alias_method  :client_secret, :clientSecret
      alias_method  :client_secret=, :clientSecret=

      attr_accessor :clientType
      alias_method  :client_type,  :clientType
      alias_method  :client_type=, :clientType=

      attr_accessor :redirectUris
      alias_method  :redirect_uris,  :redirectUris
      alias_method  :redirect_uris=, :redirectUris=

      attr_accessor :responseTypes
      alias_method  :response_types,  :responseTypes
      alias_method  :response_types=, :responseTypes=

      attr_accessor :grantTypes
      alias_method  :grant_types,  :grantTypes
      alias_method  :grant_types=, :grantTypes=

      attr_accessor :applicationType
      alias_method  :application_type,  :applicationType
      alias_method  :application_type=, :applicationType=

      attr_accessor :contacts

      attr_accessor :clientName
      alias_method  :client_name,  :clientName
      alias_method  :client_name=, :clientName=

      attr_accessor :clientNames
      alias_method  :client_names,  :clientNames
      alias_method  :client_names=, :clientNames=

      attr_accessor :logoUri
      alias_method  :logo_uri,  :logoUri
      alias_method  :logo_uri=, :logoUri=

      attr_accessor :logoUris
      alias_method  :logo_uris,  :logoUris
      alias_method  :logo_uris=, :logoUris=

      attr_accessor :clientUri
      alias_method  :client_uri,  :clientUri
      alias_method  :client_uri=, :clientUri=

      attr_accessor :clientUris
      alias_method  :client_uris,  :clientUris
      alias_method  :client_uris=, :clientUris=

      attr_accessor :policyUri
      alias_method  :policy_uri,  :policyUri
      alias_method  :policy_uri=, :policyUri=

      attr_accessor :policyUris
      alias_method  :policy_uris,  :policyUris
      alias_method  :policy_uris=, :policyUris=

      attr_accessor :tosUri
      alias_method  :tos_uri,  :tosUri
      alias_method  :tos_uri=, :tosUri=

      attr_accessor :tosUris
      alias_method  :tos_uris,  :tosUris
      alias_method  :tos_uris=, :tosUris=

      attr_accessor :jwksUri
      alias_method  :jwks_uri,  :jwksUri
      alias_method  :jwks_uri=, :jwksUri=

      attr_accessor :jwks

      attr_accessor :derivedSectorIdentifier
      alias_method  :derived_sector_identifier,  :derivedSectorIdentifier
      alias_method  :derived_sector_identifier=, :derivedSectorIdentifier=

      attr_accessor :sectorIdentifierUri
      alias_method  :sector_identifier_uri,  :sectorIdentifierUri
      alias_method  :sector_identifier_uri=, :sectorIdentifierUri=

      attr_accessor :subjectType
      alias_method  :subject_type,  :subjectType
      alias_method  :subject_type=, :subjectType=

      attr_accessor :idTokenSignAlg
      alias_method  :id_token_sign_alg,  :idTokenSignAlg
      alias_method  :id_token_sign_alg=, :idTokenSignAlg=

      attr_accessor :idTokenEncryptionAlg
      alias_method  :id_token_encryption_alg,  :idTokenEncryptionAlg
      alias_method  :id_token_encryption_alg=, :idTokenEncryptionAlg=

      attr_accessor :idTokenEncryptionEnc
      alias_method  :id_token_encryption_enc,  :idTokenEncryptionEnc
      alias_method  :id_token_encryption_enc=, :idTokenEncryptionEnc=

      attr_accessor :userInfoSignAlg
      alias_method  :user_info_sign_alg,  :userInfoSignAlg
      alias_method  :user_info_sign_alg=, :userInfoSignAlg=

      attr_accessor :userInfoEncryptionAlg
      alias_method  :user_info_encryption_alg,  :userInfoEncryptionAlg
      alias_method  :user_info_encryption_alg=, :userInfoEncryptionAlg=

      attr_accessor :userInfoEncryptionEnc
      alias_method  :user_info_encryption_enc,  :userInfoEncryptionEnc
      alias_method  :user_info_encryption_enc=, :userInfoEncryptionEnc=

      attr_accessor :requestSignAlg
      alias_method  :request_sign_alg,  :requestSignAlg
      alias_method  :request_sign_alg=, :requestSignAlg=

      attr_accessor :requestEncryptionAlg
      alias_method  :request_encryption_alg,  :requestEncryptionAlg
      alias_method  :request_encryption_alg=, :requestEncryptionAlg=

      attr_accessor :requestEncryptionEnc
      alias_method  :request_encryption_enc,  :requestEncryptionEnc
      alias_method  :request_encryption_enc=, :requestEncryptionEnc=

      attr_accessor :tokenAuthMethod
      alias_method  :token_auth_method,  :tokenAuthMethod
      alias_method  :token_auth_method=, :tokenAuthMethod=

      attr_accessor :tokenAuthSignAlg
      alias_method  :token_auth_sign_alg,  :tokenAuthSignAlg
      alias_method  :token_auth_sign_alg=, :tokenAuthSignAlg=

      attr_accessor :defaultMaxAge
      alias_method  :default_max_age,  :defaultMaxAge
      alias_method  :default_max_age=, :defaultMaxAge=

      attr_accessor :defaultAcrs
      alias_method  :default_acrs,  :defaultAcrs
      alias_method  :default_acrs=, :defaultAcrs=

      attr_accessor :authTimeRequired
      alias_method  :auth_time_required,  :authTimeRequired
      alias_method  :auth_time_required=, :authTimeRequired=

      attr_accessor :loginUri
      alias_method  :login_uri,  :loginUri
      alias_method  :login_uri=, :loginUri=

      attr_accessor :requestUris
      alias_method  :request_uris,  :requestUris
      alias_method  :request_uris=, :requestUris=

      attr_accessor :description

      attr_accessor :descriptions

      attr_accessor :createdAt
      alias_method  :created_at,  :createdAt
      alias_method  :created_at=, :createdAt=

      attr_accessor :modifiedAt
      alias_method  :modified_at,  :modifiedAt
      alias_method  :modified_at=, :modifiedAt=

      attr_accessor :extension

      attr_accessor :tlsClientAuthSubjectDn
      alias_method  :tls_client_auth_subject_dn,  :tlsClientAuthSubjectDn
      alias_method  :tls_client_auth_subject_dn=, :tlsClientAuthSubjectDn=

      attr_accessor :tlsClientAuthSanDns
      alias_method  :tls_client_auth_san_dns,  :tlsClientAuthSanDns
      alias_method  :tls_client_auth_san_dns=, :tlsClientAuthSanDns=

      attr_accessor :tlsClientAuthSanUri
      alias_method  :tls_client_auth_san_uri,  :tlsClientAuthSanUri
      alias_method  :tls_client_auth_san_uri=, :tlsClientAuthSanUri=

      attr_accessor :tlsClientAuthSanIp
      alias_method  :tls_client_auth_san_ip,  :tlsClientAuthSanIp
      alias_method  :tls_client_auth_san_ip=, :tlsClientAuthSanIp=

      attr_accessor :tlsClientAuthSanEmail
      alias_method  :tls_client_auth_san_email,  :tlsClientAuthSanEmail
      alias_method  :tls_client_auth_san_email=, :tlsClientAuthSanEmail=

      attr_accessor :tlsClientCertificateBoundAccessTokens
      alias_method  :tls_client_certificate_bound_access_tokens,  :tlsClientCertificateBoundAccessTokens
      alias_method  :tls_client_certificate_bound_access_tokens=, :tlsClientCertificateBoundAccessTokens=

      attr_accessor :selfSignedCertificateKeyId
      alias_method  :self_signed_certificate_key_id,  :selfSignedCertificateKeyId
      alias_method  :self_signed_certificate_key_id=, :selfSignedCertificateKeyId=

      attr_accessor :softwareId
      alias_method  :software_id,  :softwareId
      alias_method  :software_id=, :softwareId=

      attr_accessor :softwareVersion
      alias_method  :software_version,  :softwareVersion
      alias_method  :software_version=, :softwareVersion=

      attr_accessor :authorizationSignAlg
      alias_method  :authorization_sign_alg,  :authorizationSignAlg
      alias_method  :authorization_sign_alg=, :authorizationSignAlg=

      attr_accessor :authorizationEncryptionAlg
      alias_method  :authorization_encryption_alg,  :authorizationEncryptionAlg
      alias_method  :authorization_encryption_alg=, :authorizationEncryptionAlg=

      attr_accessor :authorizationEncryptionEnc
      alias_method  :authorization_encryption_enc,  :authorizationEncryptionEnc
      alias_method  :authorization_encryption_enc=, :authorizationEncryptionEnc=

      attr_accessor :bcDeliveryMode
      alias_method  :bc_delivery_mode,  :bcDeliveryMode
      alias_method  :bc_delivery_mode=, :bcDeliveryMode=

      attr_accessor :bcNotificationEndpoint
      alias_method  :bc_notification_endpoint,  :bcNotificationEndpoint
      alias_method  :bc_notification_endpoint=, :bcNotificationEndpoint=

      attr_accessor :bcRequestSignAlg
      alias_method  :bc_request_sign_alg,  :bcRequestSignAlg
      alias_method  :bc_request_sign_alg=, :bcRequestSignAlg=

      attr_accessor :bcUserCodeRequired
      alias_method  :bc_user_code_required,  :bcUserCodeRequired
      alias_method  :bc_user_code_required=, :bcUserCodeRequired=

      attr_accessor :dynamicallyRegistered
      alias_method  :dynamically_registered,  :dynamicallyRegistered
      alias_method  :dynamically_registered=, :dynamicallyRegistered=

      attr_accessor :registrationAccessTokenHash
      alias_method  :registration_access_token_hash,  :registrationAccessTokenHash
      alias_method  :registration_access_token_hash=, :registrationAccessTokenHash=

      attr_accessor :authorizationDetailsTypes
      alias_method  :authorization_details_types,  :authorizationDetailsTypes
      alias_method  :authorization_details_types=, :authorizationDetailsTypes=

      attr_accessor :parRequired
      alias_method  :par_required,  :parRequired
      alias_method  :par_required=, :parRequired=

      attr_accessor :requestObjectRequired
      alias_method  :request_object_required,  :requestObjectRequired
      alias_method  :request_object_required=, :requestObjectRequired=

      attr_accessor :attributes

      attr_accessor :customMetadata
      alias_method  :custom_metadata, :customMetadata
      alias_method  :custom_metadata=, :customMetadata=

      attr_accessor :frontChannelRequestObjectEncryptionRequired
      alias_method  :front_channel_request_object_encryption_required,  :frontChannelRequestObjectEncryptionRequired
      alias_method  :front_channel_request_object_encryption_required=, :frontChannelRequestObjectEncryptionRequired=

      attr_accessor :requestObjectEncryptionAlgMatchRequired
      alias_method  :request_object_encryption_alg_match_required,  :requestObjectEncryptionAlgMatchRequired
      alias_method  :request_object_encryption_alg_match_required=, :requestObjectEncryptionAlgMatchRequired=

      attr_accessor :requestObjectEncryptionEncMatchRequired
      alias_method  :request_object_encryption_enc_match_required,  :requestObjectEncryptionEncMatchRequired
      alias_method  :request_object_encryption_enc_match_required=, :requestObjectEncryptionEncMatchRequired=

      attr_accessor :digestAlgorithm
      alias_method  :digest_algorithm,  :digestAlgorithm
      alias_method  :digest_algorithm=, :digestAlgorithm=

      attr_accessor :singleAccessTokenPerSubject
      alias_method  :single_access_token_per_subject,  :singleAccessTokenPerSubject
      alias_method  :single_access_token_per_subject=, :singleAccessTokenPerSubject=    

      attr_accessor :pkceRequired
      alias_method  :pkce_required,  :pkceRequired
      alias_method  :pkce_required=, :pkceRequired=

      attr_accessor :pkceS256Required
      alias_method  :pkce_s256_required,  :pkceS256Required
      alias_method  :pkce_s256_required=, :pkceS256Required=

      attr_accessor :automaticallyRegistered
      alias_method  :automatically_registered,  :automaticallyRegistered
      alias_method  :automatically_registered=, :automaticallyRegistered=

      attr_accessor :explicitlyRegistered
      alias_method  :explicitly_registered,  :explicitlyRegistered
      alias_method  :explicitly_registered=, :explicitlyRegistered=

      attr_accessor :dpopRequired
      alias_method  :dpop_required,  :dpopRequired
      alias_method  :dpop_required=, :dpopRequired=

      private

      def defaults
        {
          number:                                      0,
          serviceNumber:                               0,
          developer:                                   nil,
          clientId:                                    0,
          clientIdAlias:                               nil,
          clientIdAliasEnabled:                        false,
          clientSecret:                                nil,
          clientType:                                  nil,
          redirectUris:                                nil,
          responseTypes:                               nil,
          grantTypes:                                  nil,
          applicationType:                             nil,
          contacts:                                    nil,
          clientName:                                  nil,
          clientNames:                                 nil,
          logoUri:                                     nil,
          logoUris:                                    nil,
          clientUri:                                   nil,
          clientUris:                                  nil,
          policyUri:                                   nil,
          policyUris:                                  nil,
          tosUri:                                      nil,
          tosUris:                                     nil,
          jwksUri:                                     nil,
          jwks:                                        nil,
          derivedSectorIdentifier:                     nil,
          sectorIdentifierUri:                         nil,
          subjectType:                                 nil,
          idTokenSignAlg:                              nil,
          idTokenEncryptionAlg:                        nil,
          idTokenEncryptionEnc:                        nil,
          userInfoSignAlg:                             nil,
          userInfoEncryptionAlg:                       nil,
          userInfoEncryptionEnc:                       nil,
          requestSignAlg:                              nil,
          requestEncryptionAlg:                        nil,
          requestEncryptionEnc:                        nil,
          tokenAuthMethod:                             nil,
          tokenAuthSignAlg:                            nil,
          defaultMaxAge:                               0,
          defaultAcrs:                                 nil,
          authTimeRequired:                            false,
          loginUri:                                    nil,
          requestUris:                                 nil,
          description:                                 nil,
          descriptions:                                nil,
          createdAt:                                   0,
          modifiedAt:                                  0,
          extension:                                   nil,
          tlsClientAuthSubjectDn:                      nil,
          tlsClientAuthSanDns:                         nil,
          tlsClientAuthSanUri:                         nil,
          tlsClientAuthSanIp:                          nil,
          tlsClientAuthSanEmail:                       nil,
          tlsClientCertificateBoundAccessTokens:       false,
          selfSignedCertificateKeyId:                  nil,
          softwareId:                                  nil,
          softwareVersion:                             nil,
          authorizationSignAlg:                        nil,
          authorizationEncryptionAlg:                  nil,
          authorizationEncryptionEnc:                  nil,
          bcDeliveryMode:                              nil,
          bcNotificationEndpoint:                      nil,
          bcRequestSignAlg:                            nil,
          bcUserCodeRequired:                          false,
          dynamicallyRegistered:                       false,
          registrationAccessTokenHash:                 nil,
          authorizationDetailsTypes:                   nil,
          parRequired:                                 false,
          requestObjectRequired:                       false,
          attributes:                                  nil,
          customMetadata:                              nil,
          frontChannelRequestObjectEncryptionRequired: false,
          requestObjectEncryptionAlgMatchRequired:     false,
          requestObjectEncryptionEncMatchRequired:     false,
          digestAlgorithm:                             nil,
          singleAccessTokenPerSubject:                 false,
          pkceRequired:                                false,
          pkceS256Required:                            false,
          automaticallyRegistered:                     false,
          explicitlyRegistered:                        false,
          dpopRequired:                                false,
        }
      end

      def set_params(hash)
        @number                                      = hash[:number]
        @serviceNumber                               = hash[:serviceNumber]
        @developer                                   = hash[:developer]
        @clientId                                    = hash[:clientId]
        @clientIdAlias                               = hash[:clientIdAlias]
        @clientIdAliasEnabled                        = hash[:clientIdAliasEnabled]
        @clientSecret                                = hash[:clientSecret]
        @clientType                                  = hash[:clientType]
        @redirectUris                                = hash[:redirectUris]
        @responseTypes                               = hash[:responseTypes]
        @grantTypes                                  = hash[:grantTypes]
        @applicationType                             = hash[:applicationType]
        @contacts                                    = hash[:contacts]
        @clientName                                  = hash[:clientName]
        @clientNames                                 = get_parsed_array(hash[:clientNames]) { |e| Authlete::Model::TaggedValue.parse(e) }
        @logoUri                                     = hash[:logoUri]
        @logoUris                                    = get_parsed_array(hash[:logoUris]) { |e| Authlete::Model::TaggedValue.parse(e) }
        @clientUri                                   = hash[:clientUri]
        @clientUris                                  = get_parsed_array(hash[:clientUris]) { |e| Authlete::Model::TaggedValue.parse(e) }
        @policyUri                                   = hash[:policyUri]
        @policyUris                                  = get_parsed_array(hash[:policyUris]) { |e| Authlete::Model::TaggedValue.parse(e) }
        @tosUri                                      = hash[:tosUri]
        @tosUris                                     = get_parsed_array(hash[:tosUris]) { |e| Authlete::Model::TaggedValue.parse(e) }
        @jwksUri                                     = hash[:jwksUri]
        @jwks                                        = hash[:jwks]
        @derivedSectorIdentifier                     = hash[:derivedSectorIdentifier]
        @sectorIdentifierUri                         = hash[:sectorIdentifierUri]
        @subjectType                                 = hash[:subjectType]
        @idTokenSignAlg                              = hash[:idTokenSignAlg]
        @idTokenEncryptionAlg                        = hash[:idTokenEncryptionAlg]
        @idTokenEncryptionEnc                        = hash[:idTokenEncryptionEnc]
        @userInfoSignAlg                             = hash[:userInfoSignAlg]
        @userInfoEncryptionAlg                       = hash[:userInfoEncryptionAlg]
        @userInfoEncryptionEnc                       = hash[:userInfoEncryptionEnc]
        @requestSignAlg                              = hash[:requestSignAlg]
        @requestEncryptionAlg                        = hash[:requestEncryptionAlg]
        @requestEncryptionEnc                        = hash[:requestEncryptionEnc]
        @tokenAuthMethod                             = hash[:tokenAuthMethod]
        @tokenAuthSignAlg                            = hash[:tokenAuthSignAlg]
        @defaultMaxAge                               = hash[:defaultMaxAge]
        @defaultAcrs                                 = hash[:defaultAcrs]
        @authTimeRequired                            = hash[:authTimeRequired]
        @loginUri                                    = hash[:loginUri]
        @requestUris                                 = hash[:requestUris]
        @description                                 = hash[:description]
        @descriptions                                = get_parsed_array(hash[:descriptions]) { |e| Authlete::Model::TaggedValue.parse(e) }
        @createdAt                                   = hash[:createdAt]
        @modifiedAt                                  = hash[:modifiedAt]
        @extension                                   = Authlete::Model::ClientExtension.parse(hash[:extension])
        @tlsClientAuthSubjectDn                      = hash[:tlsClientAuthSubjectDn]
        @tlsClientAuthSanDns                         = hash[:tlsClientAuthSanDns]
        @tlsClientAuthSanUri                         = hash[:tlsClientAuthSanUri]
        @tlsClientAuthSanIp                          = hash[:tlsClientAuthSanIp]
        @tlsClientAuthSanEmail                       = hash[:tlsClientAuthSanEmail]
        @tlsClientCertificateBoundAccessTokens       = hash[:tlsClientCertificateBoundAccessTokens]
        @selfSignedCertificateKeyId                  = hash[:selfSignedCertificateKeyId]
        @softwareId                                  = hash[:softwareId]
        @softwareVersion                             = hash[:softwareVersion]
        @authorizationSignAlg                        = hash[:authorizationSignAlg]
        @authorizationEncryptionAlg                  = hash[:authorizationEncryptionAlg]
        @authorizationEncryptionEnc                  = hash[:authorizationEncryptionEnc]
        @bcDeliveryMode                              = hash[:bcDeliveryMode]
        @bcNotificationEndpoint                      = hash[:bcNotificationEndpoint]
        @bcRequestSignAlg                            = hash[:bcRequestSignAlg]
        @bcUserCodeRequired                          = hash[:bcUserCodeRequired]
        @dynamicallyRegistered                       = hash[:dynamicallyRegistered]
        @registrationAccessTokenHash                 = hash[:registrationAccessTokenHash]
        @authorizationDetailsTypes                   = hash[:authorizationDetailsTypes]
        @parRequired                                 = hash[:parRequired]
        @requestObjectRequired                       = hash[:requestObjectRequired]
        @attributes                                  = get_parsed_array(hash[:attributes]) { |e| Authlete::Model::Pair.parse(e) }
        @customMetadata                              = hash[:customMetadata]
        @frontChannelRequestObjectEncryptionRequired = hash[:frontChannelRequestObjectEncryptionRequired]
        @requestObjectEncryptionAlgMatchRequired     = hash[:requestObjectEncryptionAlgMatchRequired]
        @requestObjectEncryptionEncMatchRequired     = hash[:requestObjectEncryptionEncMatchRequired]
        @digestAlgorithm                             = hash[:digestAlgorithm]
        @singleAccessTokenPerSubject                 = hash[:singleAccessTokenPerSubject]
        @pkceRequired                                = hash[:pkceRequired]
        @pkceS256Required                            = hash[:pkceS256Required]
        @automaticallyRegistered                     = hash[:automaticallyRegistered]
        @explicitlyRegistered                        = hash[:explicitlyRegistered]
        @dpopRequired                                = hash[:dpopRequired]
      end

      def to_hash_value(key, var)
        raw_val = instance_variable_get(var)

        case key
          when :clientNames, :logoUris, :clientUris, :policyUris, :tosUris,
               :descriptions, :attributes
            raw_val&.map { |e| e.to_hash }
          when :extension
            raw_val&.to_hash
          else
            raw_val
        end
      end

      public

      def standard_metadata(delete_zero = true, delete_false = true, delete_nil = true)
        metadata = {
          client_id:                                      "#{@clientId}",
          redirect_uris:                                  @redirectUris,
          response_types:                                 standard_response_types(@responseTypes),
          grant_types:                                    standard_grant_types(@grantTypes),
          application_type:                               from_application_type(@applicationType),
          contacts:                                       @contacts,
          client_name:                                    @clientName,
          logo_uri:                                       @logoUri,
          client_uri:                                     @clientUri,
          policy_uri:                                     @policyUri,
          tos_uri:                                        @tosUri,
          jwks_uri:                                       @jwksUri,
          jwks:                                           json_parse(@jwks),
          sector_identifier_uri:                          @sectorIdentifierUri,
          subject_type:                                   from_subject_type(@subjectType),
          id_token_signed_response_alg:                   from_jwsalg(@idTokenSignAlg),
          id_token_encrypted_response_alg:                from_jwealg(@idTokenEncryptionAlg),
          id_token_encrypted_response_enc:                from_jweenc(@idTokenEncryptionEnc),
          userinfo_signed_response_alg:                   from_jwsalg(@userInfoSignAlg),
          userinfo_encrypted_response_alg:                from_jwealg(@userInfoEncryptionAlg),
          userinfo_encrypted_response_enc:                from_jweenc(@userInfoEncryptionEnc),
          request_object_signing_alg:                     from_jwsalg(@requestSignAlg),
          request_object_encryption_alg:                  from_jwealg(@requestEncryptionAlg),
          request_object_encryption_enc:                  from_jweenc(@requestEncryptionEnc),
          token_endpoint_auth_method:                     from_client_auth_method(@tokenAuthMethod),
          token_endpoint_auth_signing_alg:                from_jwsalg(@tokenAuthSignAlg),
          default_max_age:                                @defaultMaxAge,
          default_acr_values:                             @defaultAcrs,
          require_auth_time:                              @authTimeRequired,
          initiate_login_uri:                             @loginUri,
          request_uris:                                   @requestUris,
          tls_client_auth_subject_dn:                     @tlsClientAuthSubjectDn,
          tls_client_auth_san_dns:                        @tlsClientAuthSanDns,
          tls_client_auth_san_uri:                        @tlsClientAuthSanUri,
          tls_client_auth_san_ip:                         @tlsClientAuthSanIp,
          tls_client_auth_san_email:                      @tlsClientAuthSanEmail,
          tls_client_certificate_bound_access_tokens:     @tlsClientCertificateBoundAccessTokens,
          software_id:                                    @softwareId,
          software_version:                               @softwareVersion,
          authorization_signed_response_alg:              from_jwsalg(@authorizationSignAlg),
          authorization_encrypted_response_alg:           from_jwealg(@authorizationEncryptionAlg),
          authorization_encrypted_response_enc:           from_jweenc(@authorizationEncryptionEnc),
          backchannel_token_delivery_mode:                from_delivery_mode(@bcDeliveryMode),
          backchannel_client_notification_endpoint:       @bcNotificationEndpoint,
          backchannel_authentication_request_signing_alg: from_jwsalg(@bcRequestSignAlg),
          backchannel_user_code_parameter:                @bcUserCodeRequired,
          authorization_details_types:                    @authorizationDetailsTypes,
          digest_algorithm:                               @digestAlgorithm
        }

        if delete_nil
          metadata.compact!
        end

        if delete_false
          metadata = metadata.delete_if {|key, value| value == false}
        end

        if delete_zero
          metadata = metadata.delete_if {|key, value| value == 0}
        end

        metadata
      end

      private

      def standard_response_types(array)
        array.nil? ? nil : array.map do |element|
          Authlete::Types::ResponseType::constant_get(element)
        end
      end

      def standard_grant_types(array)
        array.nil? ? nil : array.map do |element|
          Authlete::Types::GrantType::constant_get(element)
        end
      end

      def json_parse(json)
        json.nil? ? nil : JSON.parse(json)
      end

      def from_application_type(constant_name)
        Authlete::Types::ApplicationType::constant_get(constant_name)
      end

      def from_client_auth_method(constant_name)
        Authlete::Types::ClientAuthMethod::constant_get(constant_name)
      end

      def from_delivery_mode(constant_name)
        Authlete::Types::DeliveryMode::constant_get(constant_name)
      end

      def from_jwealg(constant_name)
        Authlete::Types::JWEAlg::constant_get(constant_name)
      end

      def from_jweenc(constant_name)
        Authlete::Types::JWEEnc::constant_get(constant_name)
      end

      def from_jwsalg(constant_name)
        Authlete::Types::JWSAlg::constant_get(constant_name)
      end

      def from_subject_type(constant_name)
        Authlete::Types::SubjectType::constant_get(constant_name)
      end
    end
  end
end
