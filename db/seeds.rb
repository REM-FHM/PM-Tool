# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Seed intialisiert"


Project.create(id: 1, name: 'Web-Shop')

puts "ProductBreakdownStructure wird eingelesen"
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

puts "WorkBreakdownStructure wird eingelesen"
WorkBreakdownStructure.create(id: 1, p_id: 1)
Task.create(id: 1, name: 'Projektmanagement', wbs_id: 1)
Subtask.create(id: 1, name: 'Geschäftsmodellierung', task_id: 1)
Workpackage.create(id: 1, name: 'Wirtschaftlichkeitsrechnung erstellen', subtask_id: 1)
Workpackage.create(id: 2, name: 'Lastenheft erstellen', subtask_id: 1)
Subtask.create(id: 2, name: 'Projektplanung', task_id: 1)
Workpackage.create(id: 3, name: 'Ablauf- und Terminplanung', subtask_id: 2)
Workpackage.create(id: 4, name: 'Einsatzmittel- und Kostenplanung', subtask_id: 2)
Task.create(id: 2, name: 'Definition und Entwurf', wbs_id: 1)
Subtask.create(id: 3, name: 'Funktionale Architektur', task_id: 2)
Workpackage.create(id: 5, name: 'Funtionen- und GUI-Modellierung', subtask_id: 3)
Workpackage.create(id: 6, name: 'Prozess- und Datenmodellierung', subtask_id: 3)

puts "Seed abgeschlossen!"