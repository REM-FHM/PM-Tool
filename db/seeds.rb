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

puts "ResourceBreakdownStructure wird eingelesen"
ResourceBreakdownStructure.create(id: 1, p_id: 1)
Type.create(id: 1, name: 'Intern', rbs_id: 1)
Role.create(id: 1, name: 'Projektleiter', type_id: 1)
Resource.create(id: 1, qualification: 'PMP', experience: '>3 Projektleitung', quantitiy: '1', role_id: 1)
Role.create(id: 2, name: 'Projektcontroller', type_id: 1)
Resource.create(id: 2, qualification: 'Project MGMT', experience: 'Junior', quantitiy: '1', role_id: 2)
Role.create(id: 3, name: 'Geschäftsanalytiker', type_id: 1)
Resource.create(id: 3, qualification: 'Business Analyst', experience: '>3 Jahre Management', quantitiy: '1', role_id: 3)
Type.create(id: 2, name: 'Extern', rbs_id: 1)
Role.create(id: 4, name: 'Datenbankentwickler', type_id: 2)
Resource.create(id: 4, qualification: 'Level 200', experience: '', quantitiy: '2', role_id: 4)
Resource.create(id: 5, qualification: 'Level 300', experience: '>3 Jahre', quantitiy: '2', role_id: 4)
Role.create(id: 5, name: 'Softwareentwickler', type_id: 2)

puts "Roadmap wird eingelesen"
Roadmap.create(id: 1, p_id: 1)
Milestone.create(id: 1, roadmap_id: 1, workpackage_id: 1, endtime: 10)
Milestone.create(id: 2, roadmap_id: 1, workpackage_id: 2, endtime: 30)
Milestone.create(id: 3, roadmap_id: 1, workpackage_id: 3, endtime: 40)
Milestone.create(id: 4, roadmap_id: 1, workpackage_id: 4, endtime: 50)
Milestone.create(id: 5, roadmap_id: 1, workpackage_id: 5, endtime: 5)
Milestone.create(id: 6, roadmap_id: 1, workpackage_id: 6, endtime: 10)


puts "ResourceAllocationMatrix wird angelegt"
ResourceAllocationMatrix.create(id: 1, p_id: 1)
puts "Seed abgeschlossen!"

DelphiEstimation.create(id: 1, p_id: 1)
Round.create(id: 1, delphiEstimation_id: 1, count: 1, closed: true)
Round.create(id: 2, delphiEstimation_id: 1, count: 2, closed: true)
Round.create(id: 3, delphiEstimation_id: 1, count: 3, closed: false)
Round.create(id: 4, delphiEstimation_id: 2, count: 1, closed: false)
ExpertForm.create(id: 1, expertName: 'Jan', round_id: 1)
ExpertForm.create(id: 2, expertName: 'Tobias', round_id: 1)
ExpertForm.create(id: 3, expertName: 'Lukas', round_id: 2)
ExpertForm.create(id: 4, expertName: 'Dieter', round_id: 3)