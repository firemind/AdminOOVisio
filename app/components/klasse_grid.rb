class KlasseGrid < MyGrid
  def configure(c)
    super
    c.model = "Klasse"
    c.columns = [
      :name, 
      {name: :klasse_type, editor: combobox_config([ ['NORM', 'Normal'], ['ABSTR', 'Abstract']])},
      :img,
      :pos_x,
      :pos_y
    ]
    c.bbar = [:apply, :add_in_form, :del]
  end
end
