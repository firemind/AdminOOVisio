class App < Netzke::Core::Panel
  def configure(c)
    super
    c.layout = :border
    c.prevent_header = true
    c.items = [
      {
        :itemId => 'menu_bar',
        :xtype => 'toolbar',
        :region => 'north',
        :height => 28,
        :items => ['<b>AdminOOVisio</b>', '->', :download]
      },
      {region: :west, width: 300, layout: {type: :vbox, align: :stretch}, items: [:technik_grid, :klasse_grid]},
      {region: :center, layout: {type: :hbox, align: :stretch}, items: [:attribut_grid, {
        flex: 1,
        layout: {type: :vbox, align: :stretch},
        items: [:methode_grid, :activity_grid]
      }
      ]}
    ]
  end


  action :download do |c|
    c.icon = :page_white_put
    c.text = "Download"
  end

  component :technik_grid do |c|
    c.flex = 1
  end

  component :klasse_grid do |c|
    c.flex = 2
    c.scope= {technik_id: component_session[:selected_technik_id]}
    c.strong_default_attrs= {technik_id: component_session[:selected_technik_id]}
  end

  component :attribut_grid do |c|
    c.flex = 1

    c.scope= {klasse_id: component_session[:selected_klasse_id]}
    c.strong_default_attrs= {klasse_id: component_session[:selected_klasse_id]}
  end

  component :methode_grid do |c|
    c.flex = 1

    c.scope= {klasse_id: component_session[:selected_klasse_id]}
    c.strong_default_attrs= {klasse_id: component_session[:selected_klasse_id]}
  end

  component :activity_grid do |c|
    c.flex = 1

    c.scope= {methode_id: component_session[:selected_methode_id]}
    c.strong_default_attrs= {methode_id: component_session[:selected_methode_id]}
  end

  endpoint :select_technik do |params, this|
    component_session[:selected_technik_id] = params[:technik_id]
  end

  endpoint :select_klasse do |params, this|
    component_session[:selected_klasse_id] = params[:klasse_id]
  end

  endpoint :select_methode do |params, this|
    component_session[:selected_methode_id] = params[:methode_id]
  end
  js_configure do |c|
    c.mixin
    c.onDownload=<<-JS
    function(e){
      window.location.href = "/download/technik.xml";
    }
    JS
  end
end
