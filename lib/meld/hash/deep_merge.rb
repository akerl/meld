# From https://gist.github.com/ku/e17e3d65ec4c37b60149
# From http://stackoverflow.com/questions/9381553/ruby-merge-nested-hash
class Hash
  def deep_merge!(second)
    merger = proc do |_, v1, v2|
      next v1.merge(v2, &merger) if [v1, v2].all?(Hash)
      next v1 + v2 if [v1, v2].all?(Array)
      v2
    end
    merge!(second, &merger)
  end

  def deep_merge(second)
    dup.deep_merge! second
  end
end
