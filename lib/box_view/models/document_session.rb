module BoxView
  module Models
    class DocumentSession < Base
      
      has_attributes(
        type:       { type: :string },
        id:         { type: :string },
        expires_at: { type: :datetime, readonly: true }
      )

      def view_url(theme = "dark")
        "https://view-api.box.com/view/#{self.id}?theme=#{theme}"
      end

      def to_params
        {}
      end

      def api
        BoxView::Api::DocumentSession.new(session)
      end

    end
  end
end