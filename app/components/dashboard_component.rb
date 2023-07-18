class DashboardComponent
  attr_reader :title, :description

  def initialize(title:, description:)
    @title, @description = title, description
  end

  def render_in(view_context)
    <<~CONTENT.html_safe
    <div>
      <h1 class="font-bold text-4xl">#{title}</h1>
      <p>#{description}</p>
    </div>
    CONTENT
  end
end