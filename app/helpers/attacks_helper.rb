module AttacksHelper
  def csp_as_hash
    request.content_security_policy.build.split(";").each_with_object({}) do |directive, hash|
      name, *rest = directive.split(" ")

      hash[name] = rest.join(" ")
    end
  end
end
