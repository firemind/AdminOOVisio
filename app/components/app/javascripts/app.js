{
  initComponent: function(){
    this.callParent();

    var view = this.netzkeGetComponent('technik_grid').getView();
    view.on('itemclick', function(view, record){
      this.selectTechnik({technik_id: record.get('id')});
      bas = this.netzkeGetComponent('klasse_grid');
      bas.getStore().load();
    }, this);
    this.netzkeGetComponent('technik_grid').getStore().on("beforeload", function(){
      this.selectTechnik({technik_id: null});
      bas = this.netzkeGetComponent('klasse_grid');
      bas.getStore().load();
    }, this);

    var view = this.netzkeGetComponent('klasse_grid').getView();
    view.on('itemclick', function(view, record){
      this.selectKlasse({klasse_id: record.get('id')});
      bas = this.netzkeGetComponent('attribut_grid');
      bas.getStore().load();
      bas = this.netzkeGetComponent('methode_grid');
      bas.getStore().load();
    }, this);
    this.netzkeGetComponent('klasse_grid').getStore().on("beforeload", function(){
      this.selectKlasse({klasse_id: null});
      bas = this.netzkeGetComponent('attribut_grid');
      bas.getStore().load();
      bas = this.netzkeGetComponent('methode_grid');
      bas.getStore().load();
    }, this);

    var view = this.netzkeGetComponent('methode_grid').getView();
    view.on('itemclick', function(view, record){
      this.selectMethode({methode_id: record.get('id')});
      bas = this.netzkeGetComponent('activity_grid');
      bas.getStore().load();
    }, this);
    this.netzkeGetComponent('methode_grid').getStore().on("beforeload", function(){
      this.selectMethode({methode_id: null});
      bas = this.netzkeGetComponent('activity_grid');
      bas.getStore().load();
    }, this);
  }
}
