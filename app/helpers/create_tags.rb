helpers do 
  def create_tags(args)
    temp_tags = args.join.gsub(/\s/, '').split(',')
    tags = []
    temp_tags.each do |tag|
      tags << Tag.find_or_create_by_name(tag)
    end
    tags
  end

  def add_tags_to_post(post, tags)
    tags.each do |tag|
      post.tags << tag
    end
  end
end