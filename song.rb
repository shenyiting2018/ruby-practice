require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/song.db")

#define model
class Song
	include Datamapper::Resource
	property :id, Serial #auto increment
	property :title, String
	property :lyrics, Text
	property :length, Integer
	property :release, Date
end

#verify table
DataMapper.finalize

get '/songs' do 
	@songs = Song.all
	erb :songs
end
