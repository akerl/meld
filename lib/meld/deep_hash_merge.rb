module Kernel
  # From https://gist.github.com/ku/e17e3d65ec4c37b60149
  # From http://stackoverflow.com/questions/9381553/ruby-merge-nested-hash
  class Hash
    def deep_merge(second)
      merger = proc do |_, v1, v2|
        [v1, v2].all? { |x| x.is_a? Hash } ? v1.merge(v2, &merger) : v2
      end
      merge(second, &merger)
    end
  end
end
