module ApplicationHelper
  def external_url(url, options = {})
    url_parts = URI.parse(url)
    url_parts.query = [
      url_parts.query,
      options.to_query
    ].compact
     .join('&') if options.keys.any?

    url_parts.to_s
  end
end
