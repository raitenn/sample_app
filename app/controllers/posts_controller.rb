class PostsController < ApplicationController

	def new
	     @post = Post.new
	end

	# 以下を追加
	def create
	    # ストロングパラメーターを使用
	     post = Post.new(post_params)
	    # DBへ保存する
	     post.save
	    # トップ画面へリダイレクト
	    redirect_to posts_path
	end

	def index 
		@posts = Post.all
	end


private

	def post_params
	    params.require(:post).permit(:title, :body)
	end

end
