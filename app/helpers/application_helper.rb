# app/helpers/application_helper.rb
module ApplicationHelper
  def gravatar_url(user, size: 30, default: 'identicon', rating: 'g', secure: true)
    email = user.email.downcase
    hash = Digest::MD5.hexdigest(email)
    url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}&d=#{default}&r=#{rating}"
    url = "#{url}&secure=true" if secure
    url
  end

  def gravatar_image_tag(user, options = {})
    size = options[:size] || 30
    default = options[:default] || 'identicon'
    rating = options[:rating] || 'g'
    secure = options[:secure] || true

    image_tag(gravatar_url(user, size: size, default: default, rating: rating, secure: secure), class: 'avatar-img', alt: 'User Avatar')
  end
end
