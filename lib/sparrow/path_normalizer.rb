require 'active_support/core_ext/string/starts_ends_with'

module Sparrow
  module PathNormalizer
    def normalize_path(path)
      path[/./m] = '' if path.starts_with?('/')
      path
    end
  end
end