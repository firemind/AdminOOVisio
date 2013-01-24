xml.instruct!              # for the <?xml version="1.0" encoding="UTF-8"?> line
xml.tag!('techniken-list') do               # xml.foo creates foo element
  @techniken.each do |technik|
    xml.technik name: technik.name do
      technik.klasses.each do |klasse|
        xml.class img: klasse.img, name: klasse.name, posx: klasse.pos_x, posy: klasse.pos_y, type: klasse.klasse_type do
          klasse.attributs.each do |attr|
            xml.attr name: attr.name, type: attr.data_type
          end
          klasse.methodes.each do |meth|
            xml.meth name: meth.name do 
              meth.activities.each do |act|
                xml.activity arg: act.arg, type: act.activity_type
              end
            end
          end
        end
      end
      "hello"
      #xml.title book.title
    end
  end
end
