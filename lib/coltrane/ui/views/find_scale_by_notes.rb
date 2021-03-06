module Coltrane
  module UI
    module Views
      class FindScaleByNotes < BaseView
        questions({
          notes: { statement: 'Which Notes?' }
        })

        def render
          notes = Commands::GetNotesFromString.run(params[:notes])
          Commands::FindScaleByNotes.run(*notes)
        end
      end
    end
  end
end
