resource "okta_app_saml" "ClaimSearch-Admin" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["ADMIN"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["N09000001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-Admin"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-Claims" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["CLAIMS"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["V50100001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-Claims"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-ClaimsAdjusters" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["CLAIMS ADJUSTERS"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["N09000001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-ClaimsAdjusters"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-ClaimsAdmin" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["CLAIMS ADMIN"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["V50100001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-ClaimsAdmin"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-Compliance" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["COMPLIANCE"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["V50100001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-Compliance"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-ItAndIntOps" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["IT AND INTERNAL OPERATIONS"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["N09000001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-ItAndIntOps"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-SupervisorAndAbove" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["SUPERVISOR AND ABOVE"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["N09000001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-SupervisorAndAbove"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

resource "okta_app_saml" "ClaimSearch-Underwriting" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["UNDERWRITING"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["V50100001"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                       = "https://www.okta.com/saml2/service-provider/spdwywvodpicspjwyqqn"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = "https://api3a.iso.com/internalsecurity/sso?idp=0oa1v0yx8s8YqMHqG0h8"
  destination                    = "${var.url}"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = "ClaimSearch-Underwriting"
  recipient                      = "${var.url}"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "${var.url}"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

# Create Claim Search Groups
resource "okta_group" "ClaimSearch-Admin" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Admin"
}

resource "okta_group" "ClaimSearch-Claims" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Claims"
}

resource "okta_group" "ClaimSearch-ClaimsAdjusters" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-ClaimsAdjusters"
}

resource "okta_group" "ClaimSearch-ClaimsAdmin" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-ClaimsAdmin"
}

resource "okta_group" "ClaimSearch-Compliance" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Compliance"
}

resource "okta_group" "ClaimSearch-ItAndIntOps" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-ItAndIntOps"
}

resource "okta_group" "ClaimSearch-SupervisorAndAbove" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-SupervisorAndAbove"
}

resource "okta_group" "ClaimSearch-Underwriting" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Underwriting"
}

# Group Assignment - Assign ClaimSearch groups to ClaimSearch Apps
resource "okta_app_group_assignment" "ClaimSearch-Admin" {
  app_id   = okta_app_saml.ClaimSearch-Admin.id
  group_id = okta_group.ClaimSearch-Admin.id
}

resource "okta_app_group_assignment" "ClaimSearch-Claims" {
  app_id   = okta_app_saml.ClaimSearch-Claims.id
  group_id = okta_group.ClaimSearch-Claims.id
}

resource "okta_app_group_assignment" "ClaimSearch-ClaimsAdjusters" {
  app_id   = okta_app_saml.ClaimSearch-ClaimsAdjusters.id
  group_id = okta_group.ClaimSearch-ClaimsAdjusters.id
}

resource "okta_app_group_assignment" "ClaimSearch-ClaimsAdmin" {
  app_id   = okta_app_saml.ClaimSearch-ClaimsAdmin.id
  group_id = okta_group.ClaimSearch-ClaimsAdmin.id
}

resource "okta_app_group_assignment" "ClaimSearch-Compliance" {
  app_id   = okta_app_saml.ClaimSearch-Compliance.id
  group_id = okta_group.ClaimSearch-Compliance.id
}

resource "okta_app_group_assignment" "ClaimSearch-ItAndIntOps" {
  app_id   = okta_app_saml.ClaimSearch-ItAndIntOps.id
  group_id = okta_group.ClaimSearch-ItAndIntOps.id
}

resource "okta_app_group_assignment" "ClaimSearch-SupervisorAndAbove" {
  app_id   = okta_app_saml.ClaimSearch-SupervisorAndAbove.id
  group_id = okta_group.ClaimSearch-SupervisorAndAbove.id
}

resource "okta_app_group_assignment" "ClaimSearch-Underwriting" {
  app_id   = okta_app_saml.ClaimSearch-Underwriting.id
  group_id = okta_group.ClaimSearch-Underwriting.id
}

# Group Rules to add members of AD groups to Okta groups
resource "okta_group_rule" "ClaimSearch-Admin-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Admin\")"
  group_assignments = [okta_group.ClaimSearch-Admin.id]
  name              = "Add users to ClaimSearch Admin group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-Claims-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Claims\")"
  group_assignments = [okta_group.ClaimSearch-Claims.id]
  name              = "Add users to ClaimSearch Claims group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-ClaimsAdjusters-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_ClaimsAdjusters\")"
  group_assignments = [okta_group.ClaimSearch-ClaimsAdjusters.id]
  name              = "Add users to ClaimSearch ClaimsAdjusters group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-ClaimsAdmin-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_ClaimsAdmin\")"
  group_assignments = [okta_group.ClaimSearch-ClaimsAdmin.id]
  name              = "Add users to ClaimSearch ClaimsAdmin group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-Compliance-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Compliance\")"
  group_assignments = [okta_group.ClaimSearch-Compliance.id]
  name              = "Add users to ClaimSearch Compliance group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-ItAndIntOps-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_ItAndIntOps\")"
  group_assignments = [okta_group.ClaimSearch-ItAndIntOps.id]
  name              = "Add users to ClaimSearch ItAndIntOps group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-SupervisorAndAbove-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_SupervisorAndAbove\")"
  group_assignments = [okta_group.ClaimSearch-SupervisorAndAbove.id]
  name              = "Add users to ClaimSearch SupervisorAndAbove group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-Underwriting-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Underwriting\")"
  group_assignments = [okta_group.ClaimSearch-Underwriting.id]
  name              = "Add users to ClaimSearch Underwriting group"
  status            = "ACTIVE"
}