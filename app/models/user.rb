class User < ActiveRecord::Base

  validates :github_username, :presence => true, :uniqueness => true, length: { maximum: 50 }
  validates :first_name, length: { maximum: 50 }
  validates :last_name, length: { maximum: 50 }
  validates :email, length: { maximum: 50 }

  def self.find_or_create_from_auth_hash(auth)
    client = Octokit::Client.new(access_token: auth.credentials.token, client_id: ENV['github_client_id'], client_secret: ENV['github_client_secret'])
    if client.organization_member?('learn-co-curriculum', auth.info.nickname)

      where(github_username: auth.info.nickname).first_or_initialize.tap do |user|
        user.access_token = auth.credentials.token
        user.github_username = auth.info.nickname
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.image = auth.info.image
        user.admin = true
        user.save

      end
    end
  end

  def name
    if first_name && last_name
      first_name + " " + last_name
    end
  end

  def full_name_or_github_name
    name || github_username
  end

  def first_name_or_github_name
    first_name || github_username
  end

end
