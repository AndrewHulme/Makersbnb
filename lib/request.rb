require 'pg'
require_relative 'connect_to_database'

class Request

  def self.request_space(user_id:, space_id:, date:)
    connect_to_database.exec("INSERT INTO requests (user_id, space_id, date) VALUES('#{user_id}', '#{space_id}', '#{date}');")
  end

  def self.view_request_space
    connect_to_database.exec("SELECT * FROM requests")
  end

  private

  def self.connect_to_database
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect dbname: 'makersbnb_test'
    else
      PG.connect dbname: 'makersbnb'
    end
  end

end
