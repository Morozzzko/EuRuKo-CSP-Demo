class Attack < ApplicationRecord
  Author = Data.define(:name, :avatar_url) do
    def profile_url
      "https://github.com/#{name}"
    end

    def at_name
      "@#{name}"
    end
  end

  def author
    Author.new(name: "morozzzko", avatar_url: "https://avatars.githubusercontent.com/u/887264?v=4")
  end
end
