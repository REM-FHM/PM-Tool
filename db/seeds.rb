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
Milestone.create(id: 1, roadmap_id: 1, component_id: 1, date: DateTime.new(2016, 2, 1))
Milestone.create(id: 2, roadmap_id: 1, component_id: 2, date: DateTime.new(2016, 2, 3))
Milestone.create(id: 3, roadmap_id: 1, component_id: 3, date: DateTime.new(2016, 2, 7))
Milestone.create(id: 4, roadmap_id: 1, component_id: 4, date: DateTime.new(2016, 2, 8))
Milestone.create(id: 5, roadmap_id: 1, component_id: 5, date: DateTime.new(2016, 2, 8))

puts "ResourceAllocationMatrix wird eingelesen"
ResourceAllocationMatrix.create(id: 1, p_id: 1)
RamEntry.create(id: 1, ram_id: 1, workpackage_id: 1, component_id: 1, resource_id: 1)
RamEntry.create(id: 2, ram_id: 1, workpackage_id: 2, component_id: 2, resource_id: 2)
RamEntry.create(id: 3, ram_id: 1, workpackage_id: 3, component_id: 3, resource_id: 3)
RamEntry.create(id: 4, ram_id: 1, workpackage_id: 4, component_id: 3, resource_id: 3)
RamEntry.create(id: 5, ram_id: 1, workpackage_id: 5, component_id: 3, resource_id: 3)
RamEntry.create(id: 6, ram_id: 1, workpackage_id: 6, component_id: 3, resource_id: 3)

puts "DelphiBreitbandSchätzung wird eingelesen"
DelphiEstimation.create(id: 1, p_id: 1)

Round.create(id: 1, delphiEstimation_id: 1, count: 1, closed: true)
FormTemplate.create(id: 1, round_id: 1)
EstimationTemplate.create(id: 1, form_template_id: 1, workpackage_id: 1, comment: "Erste Runde - Kein Kommentar")
EstimationTemplate.create(id: 2, form_template_id: 1, workpackage_id: 2, comment: "Erste Runde - Kein Kommentar")
EstimationTemplate.create(id: 3, form_template_id: 1, workpackage_id: 3, comment: "Erste Runde - Kein Kommentar")
EstimationTemplate.create(id: 4, form_template_id: 1, workpackage_id: 4, comment: "Erste Runde - Kein Kommentar")
EstimationTemplate.create(id: 5, form_template_id: 1, workpackage_id: 5, comment: "Erste Runde - Kein Kommentar")
EstimationTemplate.create(id: 6, form_template_id: 1, workpackage_id: 6, comment: "Erste Runde - Kein Kommentar")
ExpertForm.create(id: 1, round_id: 1, expertName: "Tobias")
Estimation.create(id: 1, expert_form_id: 1, workpackage_id: 1, duration: 8)
Estimation.create(id: 2, expert_form_id: 1, workpackage_id: 2, duration: 15)
Estimation.create(id: 3, expert_form_id: 1, workpackage_id: 3, duration: 6)
Estimation.create(id: 4, expert_form_id: 1, workpackage_id: 4, duration: 9)
Estimation.create(id: 5, expert_form_id: 1, workpackage_id: 5, duration: 2)
Estimation.create(id: 6, expert_form_id: 1, workpackage_id: 6, duration: 1)
ExpertForm.create(id: 2, round_id: 1, expertName: "Jan")
Estimation.create(id: 7, expert_form_id: 2, workpackage_id: 1, duration: 9)
Estimation.create(id: 8, expert_form_id: 2, workpackage_id: 2, duration: 3)
Estimation.create(id: 9, expert_form_id: 2, workpackage_id: 3, duration: 7)
Estimation.create(id: 10, expert_form_id: 2, workpackage_id: 4, duration: 8)
Estimation.create(id: 11, expert_form_id: 2, workpackage_id: 5, duration: 3)
Estimation.create(id: 12, expert_form_id: 2, workpackage_id: 6, duration: 2)
ExpertForm.create(id: 3, round_id: 1, expertName: "Lukas")
Estimation.create(id: 13, expert_form_id: 3, workpackage_id: 1, duration: 10)
Estimation.create(id: 14, expert_form_id: 3, workpackage_id: 2, duration: 7)
Estimation.create(id: 15, expert_form_id: 3, workpackage_id: 3, duration: 7)
Estimation.create(id: 16, expert_form_id: 3, workpackage_id: 4, duration: 9)
Estimation.create(id: 17, expert_form_id: 3, workpackage_id: 5, duration: 4)
Estimation.create(id: 18, expert_form_id: 3, workpackage_id: 6, duration: 3)

Round.create(id: 2, delphiEstimation_id: 1, count: 2, closed: false)
FormTemplate.create(id: 2, round_id: 2)
EstimationTemplate.create(id: 7, form_template_id: 2, workpackage_id: 1, comment: "")
EstimationTemplate.create(id: 8, form_template_id: 2, workpackage_id: 2, comment: "Starke Differenzen in letzter Runde")
EstimationTemplate.create(id: 9, form_template_id: 2, workpackage_id: 3, comment: "")
EstimationTemplate.create(id: 10, form_template_id: 2, workpackage_id: 4, comment: "")
EstimationTemplate.create(id: 11, form_template_id: 2, workpackage_id: 5, comment: "")
EstimationTemplate.create(id: 12, form_template_id: 2, workpackage_id: 6, comment: "")



puts "Seed abgeschlossen!"