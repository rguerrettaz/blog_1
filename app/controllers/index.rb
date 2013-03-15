get '/' do
  erb :index
end

get '/create_post' do
  erb :create_post
end

post '/create_post' do
  @post = Post.create(params[:post])
  tags = create_tags(params[:tags])
  add_tags_to_post(@post, tags)
  @post
  redirect '/post/' + @post.id.to_s
end

get '/post' do
  erb :post
end

delete '/post/:id' do
  Post.destroy(params[:id])
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/post/:id' do
  puts "--" *20
  puts params[:id]
  @post = Post.find(id=params[:id])
  erb :post
end

