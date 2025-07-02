class Avo::Tools::Calendar < Avo::BaseTool
  self.name = "Calendar"
  self.path = "tools/calendar" # dopasuj do ścieżki z routes
  self.visible = -> { true }  # lub warunkowo
end
