class RootController < ApplicationController
	def new

		# 空のモデルをビューへ渡す
        @post = Post.new

	end
end
