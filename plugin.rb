# frozen_string_literal: true
# name: ds-hide-ip
# about: Replace IP addresses with a hidden string
# version: 0.1
# authors: KX

after_initialize do
  AdminUserSerializer.class_eval do
    def registration_ip_address
      if [1, 2, 3].include?(self.id)
        'hidden IP address'
      else
        super
      end
    end

    def ip_address
      if [1, 2, 3].include?(self.id)
        'hidden IP address'
      else
        super
      end
    end
  end
end

