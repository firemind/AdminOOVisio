class TechnikGrid < MyGrid
  def configure(c)
    super
    c.model = "Technik"
    c.columns= [:name]
  end
end
