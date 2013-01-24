class MyGrid < Netzke::Basepack::Grid
  def configure(c)
    super
    c.enable_pagination = false
    c.bbar = [:apply, :add, :del]
  end

  def combobox_config(values)
    {
      xtype:'combo',
      store: ActiveSupport::JSON::Variable.new("new Ext.data.ArrayStore({
      fields: ['key', 'value'],
      data : #{values.inspect}
    })"),
    displayField:'value',
    valueField: 'key',
    mode: 'local',
    typeAhead: false,
    triggerAction: 'all',
    lazyRender: true,
    emptyText: ''
    }
  end

end
