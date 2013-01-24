class AttributGrid < MyGrid
  def configure(c)
    super
    c.model = "Attribut"
    c.columns = [
      :name, 
      {name: :data_type, editor: combobox_config([ ['STRING', 'String'], ['INT', 'Integer'], ['DOUBLE', 'Double']])}
    ]

  end
end
