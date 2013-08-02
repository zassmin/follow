require 'github'
class GithubController < ApplicationController

  attr_accessor :github
  private :github

  def authorize
    github  = Github.new client_id: ENV['GITHUB_CLIENT_ID'], client_secret: ENV['GITHUB_SECRET']
    address = github.authorize_url redirect_uri: 'http://localhost:300/auth', scope: 'repo'
    redirect_to address
  end

  def callback
    authorization_code = params[:code]
    access_token = github.get_token authorization_code
    access_token.token   # => returns token value
  end
end