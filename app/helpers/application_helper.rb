module ApplicationHelper

	def form_group_tag(errors, &block)
		if errors.any?
			content_tag :div, capture(&block), class: 'form-group has-error'
		else
			content_tag :div, capture(&block), class: 'form-group'
		end	
	end

	def markdown(text)
		md_extension = {fenced_code_blocks: true , disable_indented_code_blocks: true}
		md = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new, md_extension)
		(md.render text).html_safe
	end
end
