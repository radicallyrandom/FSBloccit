class Post < ActiveRecord::Base
  
  has_many :comments
  belongs_to :user
  belongs_to :topic

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

	default_scope { order('created_at DESC') }

	def markdown_title
		render_as_markdown(self.title)
	end

	def markdown_body
		render_as_markdown(self.body)
	end

	private

	def render_as_markdown(text)
		extensions = { fenced_code_blocks: true, disable_indented_code_blocks: true }
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions)
		(markdown.render text).html_safe
	end

end
