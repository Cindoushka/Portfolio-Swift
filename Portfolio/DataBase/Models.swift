//
//  Models.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 10/06/2023.
//

import Foundation

struct Contacts: Identifiable {
    var id = UUID()
    var prenom : String
    var nom : String
    var age : Int
    var lieu : String
    var telephone : String
    var email : String
    var linkedin : String
    var github : String
    var photographie : String
    var photo : String
    var posteRecherche : String
}

enum SoftSkills: String {
    case team = "Travail d'équipe"
    case communication = "Communication"
    case nego = "Négociation"
    case organisation = "Organisation"
    case gestion = "Gestion de Projet"
    case autonomie = "Autonomie"
    case creativite = "Créativité"
    case langues = "Langues étrangères"
}

enum HardSkills: String {
    case html = "html5"
    case css = "css"
    case js = "js"
    case sass = "sass"
    case swift = "swift"
    case swiftui = "swiftui"
    case figma = "figma"
    case anglais = "england"
    case italien = "italia"
    case espagnol = "spain"
    case java = "java"
    case php = "php"
    case sql = "sql"
    case github = "github"
    case svelte = "svelte"
}

struct ExperiencesPro: Identifiable {
    var id = UUID()
    var entreprise : String
    var ville : String
    var intitule : String
    var description : String
    var softSkills : [SoftSkills]
    var hardSkills : [HardSkills]
    var diplome : String
    var image : String
    var periode : String
}

struct Apropos : Identifiable {
    var id = UUID()
    var passion : String
    var description : String
    var image : String
}

struct Portfolio : Identifiable {
    var id = UUID()
    var nomProjet : String
    var description : String
    var image : String
    var video : String
    var cadre : ExperiencesPro
    var languages : [HardSkills]
    var softSkills : [SoftSkills]
}

struct TabItemData {
    let imageTab: String
    let selectedImage: String
    let titleTab: String
}
