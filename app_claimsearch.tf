resource "okta_app_saml" "ClaimSearch" {
  accessibility_self_service = "false"
  app_links_json             = "{\"natl_claimssearch_1_link\":true}"
  app_settings_json          = "{}"
  assertion_signed               = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["admin"]
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
  destination                    = "https://${var.url}/sso/saml2/0oa1v0yx8s8YqMHqG0h8"
  digest_algorithm               = "SHA256"
  hide_ios                       = "false"
  hide_web                       = "false"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = var.env == "prd" ? "ClaimSearch" : "ClaimSearch ${var.env}"
  recipient                      = "https://${var.url}/sso/saml2/0oa1v0yx8s8YqMHqG0h8"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "https://${var.url}/sso/saml2/0oa1v0yx8s8YqMHqG0h8"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.login}"
  user_name_template_type        = "BUILT_IN"
}

# Create Claim Search Group
resource "okta_group" "ClaimSearch_Users" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch_Users"
}

# Group Assignment - Assign ClaimSearch_Users group to ClaimSearch App
resource "okta_app_group_assignment" "ClaimSearch" {
  app_id   = okta_app_saml.ClaimSearch.id
  group_id = okta_group.ClaimSearch_Users.id
}

# Group Rule
resource "okta_group_rule" "ClaimSearch_Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Domain\")"
  group_assignments = [okta_group.ClaimSearch_Users.id]
  name              = "Add users to ClaimSearch group"
  status            = "ACTIVE"
}