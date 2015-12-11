# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Seed wird eingelesen"


Project.create(id: 1, name: 'Web-Shop')
ProductBreakdownStructure.create(id: 1, p_id: 1)
Subproduct.create(id: 1, name: 'Geschäftsplan und Architektur', pbs_id: 1)
Modul.create(id: 1, name: 'Geschäftsplan', subproduct_id: 1)
Component.create(id: 1, name: 'Business Case', modul_id: 1)
Component.create(id: 2, name: 'Projektplan', modul_id: 1)
Component.create(id: 3, name: 'Lastenheft', modul_id: 1)
Modul.create(id: 2, name: 'Architektur', subproduct_id: 1)
Component.create(id: 4, name: 'Anwendungsarchitektur', modul_id: 2)
Component.create(id: 5, name: 'Technische Architektur', modul_id: 2)
Subproduct.create(id: 2, name: 'Kunden- und Produktverwaltung', pbs_id: 1)
Modul.create(id: 3, name: 'Kundendatenbank', subproduct_id: 2)
Component.create(id: 6, name: 'Kundenstammdaten', modul_id: 3)
Component.create(id: 7, name: 'Kundenbewegungsdaten', modul_id: 3)


puts "Seed abgeschlossen!"