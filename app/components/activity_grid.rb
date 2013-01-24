class ActivityGrid < MyGrid
  def configure(c)
    super
    c.model = "Activity"
    c.columns = [:arg, :activity_type]
  end
end
