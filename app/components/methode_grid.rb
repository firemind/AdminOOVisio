class MethodeGrid < MyGrid
  def configure(c)
    super
    c.model = "Methode"
    c.columns = [:name]
  end
end
