class PlaylistSongsController < ApplicationController
	def create
		byebug
		@playlist_song = PlaylistSong.create(playlist_song_params)
	end

	private

	def playlist_song_params
		params.require(:playlist_song).permit(:song_id, :playlist_id)
	end
end
