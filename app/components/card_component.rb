class CardComponent
  def render_in(view_context, &block)
    <<~CONTENT.html_safe
    <div class="border border-gray-300 rounded-lg p-8">
      #{view_context.capture(&block)}
    </div>
    CONTENT
  end
end