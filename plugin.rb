# frozen_string_literal: true
# name: discourse-hide-ip
# about: Replace IP addresses with a hidden string
# version: 0.1
# authors: KX

after_initialize do
  User.class_eval do
    def registration_ip_address
      'hidden IP address'
    end
  end
end
