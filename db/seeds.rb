# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Seed intialisiert"


project = Project.create(name: 'Web-Shop')

puts "ProductBreakdownStructure wird eingelesen"
pbs = ProductBreakdownStructure.create(p_id: project.id)
subpproduct1 = Subproduct.create(name: 'Geschäftsplan und Architektur', pbs_id: pbs.id)
modul1 = Modul.create(name: 'Geschäftsplan', subproduct_id: subpproduct1.id)
component1 = Component.create(name: 'Business Case', modul_id: modul1.id)
component2 = Component.create(name: 'Projektplan', modul_id: modul1.id)
component3 = Component.create(name: 'Lastenheft', modul_id: modul1.id)
modul2 = Modul.create(name: 'Architektur', subproduct_id: subpproduct1.id)
component4 = Component.create(name: 'Anwendungsarchitektur', modul_id: modul2.id)
component5 = Component.create(name: 'Technische Architektur', modul_id: modul2.id)
subpproduct2 = Subproduct.create(name: 'Kunden- und Produktverwaltung', pbs_id: pbs.id)
modul3 = Modul.create(name: 'Kundendatenbank', subproduct_id: subpproduct2.id)
component6 = Component.create(name: 'Kundenstammdaten', modul_id: modul3.id)
component7 = Component.create(name: 'Kundenbewegungsdaten', modul_id: modul3.id)

puts "WorkBreakdownStructure wird eingelesen"
wbs = WorkBreakdownStructure.create(p_id: project.id)
task1 = Task.create(name: 'Projektmanagement', wbs_id: wbs.id)
subtask1 = Subtask.create(name: 'Geschäftsmodellierung', task_id: task1.id)
workpackage1 = Workpackage.create(name: 'Wirtschaftlichkeitsrechnung erstellen', subtask_id: subtask1.id)
workpackage2 = Workpackage.create(name: 'Lastenheft erstellen', subtask_id: subtask1.id)
subtask2 = Subtask.create(name: 'Projektplanung', task_id: task1.id)
workpackage3 = Workpackage.create(name: 'Ablauf- und Terminplanung', subtask_id: subtask2.id)
workpackage4 = Workpackage.create(name: 'Einsatzmittel- und Kostenplanung', subtask_id: subtask2.id)
task2 = Task.create(name: 'Definition und Entwurf', wbs_id: wbs.id)
subtask3 = Subtask.create(name: 'Funktionale Architektur', task_id: task2.id)
workpackage5 = Workpackage.create(name: 'Funtionen- und GUI-Modellierung', subtask_id: subtask3.id)
workpackage6 = Workpackage.create(name: 'Prozess- und Datenmodellierung', subtask_id: subtask3.id)

puts "ResourceBreakdownStructure wird eingelesen"
rbs = ResourceBreakdownStructure.create(p_id: project.id)
type1 = Type.create(name: 'Intern', rbs_id: rbs.id)
role1 = Role.create(name: 'Projektleiter', type_id: type1.id)
resource1 = Resource.create(qualification: 'PMP', experience: '>3 Projektleitung', quantitiy: '1', role_id: role1.id)
role2 = Role.create(name: 'Projektcontroller', type_id: type1.id)
resource2 = Resource.create(qualification: 'Project MGMT', experience: 'Junior', quantitiy: '1', role_id: role1.id)
role3 = Role.create(name: 'Geschäftsanalytiker', type_id: type1.id)
resource3 = Resource.create(qualification: 'Business Analyst', experience: '>3 Jahre Management', quantitiy: '1', role_id: role3.id)
type2 = Type.create(name: 'Extern', rbs_id: rbs.id)
role4 = Role.create(name: 'Datenbankentwickler', type_id: type2.id)
resource4 = Resource.create(qualification: 'Level 200', experience: '', quantitiy: '2', role_id: role4.id)
resource5 = Resource.create(qualification: 'Level 300', experience: '>3 Jahre', quantitiy: '2', role_id: role4.id)
role5 = Role.create(name: 'Softwareentwickler', type_id: type2.id)

puts "Roadmap wird eingelesen"
roadmap = Roadmap.create(p_id: project.id)
Milestone.create(roadmap_id: roadmap.id, component_id: component1.id, date: DateTime.new(2016, 2, 1))
Milestone.create(roadmap_id: roadmap.id, component_id: component2.id, date: DateTime.new(2016, 2, 3))
Milestone.create(roadmap_id: roadmap.id, component_id: component3.id, date: DateTime.new(2016, 2, 7))
Milestone.create(roadmap_id: roadmap.id, component_id: component4.id, date: DateTime.new(2016, 2, 8))
Milestone.create(roadmap_id: roadmap.id, component_id: component5.id, date: DateTime.new(2016, 2, 8))

puts "ResourceAllocationMatrix wird eingelesen"
ram = ResourceAllocationMatrix.create(p_id: project.id)
RamEntry.create(ram_id: ram.id, workpackage_id: workpackage1.id, component_id: component1.id, resource_id: resource1.id)
RamEntry.create(ram_id: ram.id, workpackage_id: workpackage2.id, component_id: component2.id, resource_id: resource2.id)
RamEntry.create(ram_id: ram.id, workpackage_id: workpackage3.id, component_id: component3.id, resource_id: resource3.id)
RamEntry.create(ram_id: ram.id, workpackage_id: workpackage4.id, component_id: component3.id, resource_id: resource3.id)
RamEntry.create(ram_id: ram.id, workpackage_id: workpackage5.id, component_id: component3.id, resource_id: resource3.id)
RamEntry.create(ram_id: ram.id, workpackage_id: workpackage6.id, component_id: component3.id, resource_id: resource3.id)

puts "DelphiBreitbandSchätzung wird eingelesen"
delphiEstimation = DelphiEstimation.create(p_id: project.id)

round1 = Round.create(delphiEstimation_id: delphiEstimation.id, count: 1, closed: true)
formTemplate1 = FormTemplate.create(round_id: round1.id)
estimationTemplate1 = EstimationTemplate.create(form_template_id: formTemplate1.id, workpackage_id: workpackage1.id, comment: "Erste Runde - Kein Kommentar")
estimationTemplate2 = EstimationTemplate.create(form_template_id: formTemplate1.id, workpackage_id: workpackage2.id, comment: "Erste Runde - Kein Kommentar")
estimationTemplate3 = EstimationTemplate.create(form_template_id: formTemplate1.id, workpackage_id: workpackage3.id, comment: "Erste Runde - Kein Kommentar")
estimationTemplate4 = EstimationTemplate.create(form_template_id: formTemplate1.id, workpackage_id: workpackage4.id, comment: "Erste Runde - Kein Kommentar")
estimationTemplate5 = EstimationTemplate.create(form_template_id: formTemplate1.id, workpackage_id: workpackage5.id, comment: "Erste Runde - Kein Kommentar")
estimationTemplate6 = EstimationTemplate.create(form_template_id: formTemplate1.id, workpackage_id: workpackage6.id, comment: "Erste Runde - Kein Kommentar")
expertForm1 = ExpertForm.create(round_id: round1.id, expertName: "Tobias")
Estimation.create(expert_form_id: expertForm1.id, workpackage_id: workpackage1.id, duration: 8)
Estimation.create(expert_form_id: expertForm1.id, workpackage_id: workpackage2.id, duration: 15)
Estimation.create(expert_form_id: expertForm1.id, workpackage_id: workpackage3.id, duration: 6)
Estimation.create(expert_form_id: expertForm1.id, workpackage_id: workpackage4.id, duration: 9)
Estimation.create(expert_form_id: expertForm1.id, workpackage_id: workpackage5.id, duration: 2)
Estimation.create(expert_form_id: expertForm1.id, workpackage_id: workpackage6.id, duration: 1)
expertForm2 = ExpertForm.create(round_id: round1.id, expertName: "Jan")
Estimation.create(expert_form_id: expertForm2.id, workpackage_id: workpackage1.id, duration: 9)
Estimation.create(expert_form_id: expertForm2.id, workpackage_id: workpackage2.id, duration: 3)
Estimation.create(expert_form_id: expertForm2.id, workpackage_id: workpackage3.id, duration: 7)
Estimation.create(expert_form_id: expertForm2.id, workpackage_id: workpackage4.id, duration: 8)
Estimation.create(expert_form_id: expertForm2.id, workpackage_id: workpackage5.id, duration: 3)
Estimation.create(expert_form_id: expertForm2.id, workpackage_id: workpackage6.id, duration: 2)
expertForm3 = ExpertForm.create(round_id: round1.id, expertName: "Lukas")
Estimation.create(expert_form_id: expertForm3.id, workpackage_id: workpackage1.id, duration: 10)
Estimation.create(expert_form_id: expertForm3.id, workpackage_id: workpackage2.id, duration: 7)
Estimation.create(expert_form_id: expertForm3.id, workpackage_id: workpackage3.id, duration: 7)
Estimation.create(expert_form_id: expertForm3.id, workpackage_id: workpackage4.id, duration: 9)
Estimation.create(expert_form_id: expertForm3.id, workpackage_id: workpackage5.id, duration: 4)
Estimation.create(expert_form_id: expertForm3.id, workpackage_id: workpackage6.id, duration: 3)

round2 = Round.create(delphiEstimation_id: delphiEstimation.id, count: 2, closed: false)
formTemplate2 = FormTemplate.create(round_id: round2.id)
EstimationTemplate.create(form_template_id: formTemplate2.id, workpackage_id: workpackage1.id, comment: "")
EstimationTemplate.create(form_template_id: formTemplate2.id, workpackage_id: workpackage2.id, comment: "Starke Differenzen in letzter Runde")
EstimationTemplate.create(form_template_id: formTemplate2.id, workpackage_id: workpackage3.id, comment: "")
EstimationTemplate.create(form_template_id: formTemplate2.id, workpackage_id: workpackage4.id, comment: "")
EstimationTemplate.create(form_template_id: formTemplate2.id, workpackage_id: workpackage5.id, comment: "")
EstimationTemplate.create(form_template_id: formTemplate2.id, workpackage_id: workpackage6.id, comment: "")



puts "Seed abgeschlossen!"