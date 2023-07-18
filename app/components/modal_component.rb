class ModalComponent < ApplicationComponent
  slot :title
  slot :description
  slot :actions

  def render_in(view_context)
    @view_context = view_context
    yield self
    @view_context.render partial: "components/modal", locals: {component: self}
  end
end