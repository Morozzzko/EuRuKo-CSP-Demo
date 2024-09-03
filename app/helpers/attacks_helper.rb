module AttacksHelper
  def csp_as_hash
    nonce = request.content_security_policy_nonce
    nonce_directives = request.content_security_policy_nonce_directives
    context = request.controller_instance || request

    request.content_security_policy.build(
      context, nonce, nonce_directives
    ).split(";").each_with_object({}) do |directive, hash|
      name, *rest = directive.split(" ")

      hash[name] = rest.join(" ")
    end
  end
end
