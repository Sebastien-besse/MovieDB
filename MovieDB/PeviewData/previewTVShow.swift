//
//  Untitled.swift
//  MovieDB
//
//  Created by Sebastien Besse on 05/01/2025.
//

import Foundation

extension Season{
        static let strangerThings = [
            Season(title: "Saison 1", description: "Une mystérieuse disparition d'enfant dévoile un monde secret."),
            Season(title: "Saison 2", description: "Les monstres reviennent plus forts avec une nouvelle menace."),
            Season(title: "Saison 3", description: "Un été à Hawkins qui tourne au cauchemar."),
            Season(title: "Saison 4", description: "Une guerre entre deux mondes commence."),
            Season(title: "Saison 5", description: "La conclusion épique d'une bataille interdimensionnelle.")
        ]

        static let viking = [
            Season(title: "Saison 1", description: "Les débuts de Ragnar Lodbrok en tant que guerrier et explorateur."),
            Season(title: "Saison 2", description: "Les ambitions grandissantes de Ragnar pour le pouvoir."),
            Season(title: "Saison 3", description: "Les raids vikings atteignent de nouveaux territoires."),
            Season(title: "Saison 4", description: "Les conflits internes menacent le règne de Ragnar."),
            Season(title: "Saison 5", description: "Le destin des fils de Ragnar après sa disparition.")
        ]

        static let peakyBlinders = [
            Season(title: "Saison 1", description: "L'ascension de la famille Shelby dans le Birmingham des années 1920."),
            Season(title: "Saison 2", description: "Tommy Shelby étend son empire vers Londres."),
            Season(title: "Saison 3", description: "Les Shelby s'impliquent dans des affaires internationales."),
            Season(title: "Saison 4", description: "Une nouvelle menace met en danger la famille Shelby."),
            Season(title: "Saison 5", description: "Tommy fait face à de nouvelles intrigues politiques et personnelles.")
        ]

        static let breakingBad = [
            Season(title: "Saison 1", description: "Walter White commence son empire de la drogue."),
            Season(title: "Saison 2", description: "Les affaires de Walter prennent de l'ampleur, mais les risques augmentent."),
            Season(title: "Saison 3", description: "L'ascension de Heisenberg et les dangers qui l'accompagnent."),
            Season(title: "Saison 4", description: "Les conflits atteignent leur paroxysme avec Gus Fring."),
            Season(title: "Saison 5", description: "Le dénouement explosif de l'histoire de Walter White.")
        ]

        static let gameOfThrones = [
            Season(title: "Saison 1", description: "La lutte pour le trône de fer commence."),
            Season(title: "Saison 2", description: "Les royaumes s'affrontent dans une guerre sans merci."),
            Season(title: "Saison 3", description: "Des alliances se forment et se brisent dans le chaos."),
            Season(title: "Saison 4", description: "Les intrigues atteignent de nouveaux sommets."),
            Season(title: "Saison 5", description: "Les forces du Nord et du Sud se préparent à un affrontement décisif.")
        ]
    
        static let theWitcher = [
            Season(title: "Saison 1", description: "Geralt de Riv tente de trouver sa place dans un monde où les humains peuvent se montrer plus cruels que les monstres."),
            Season(title: "Saison 2", description: "Geralt protège Ciri, tandis que de nouvelles menaces magiques et politiques émergent."),
            Season(title: "Saison 3", description: "Les destins de Geralt, Yennefer et Ciri convergent alors que des forces puissantes les pourchassent."),
            Season(title: "Saison 4", description: "La lutte pour le contrôle du continent atteint son apogée."),
            Season(title: "Saison 5", description: "Geralt fait face à sa mission ultime pour sauver ceux qu'il aime.")
        ]

        static let theMandalorian = [
            Season(title: "Saison 1", description: "Un chasseur de primes solitaire découvre un mystérieux enfant de la même espèce que Yoda."),
            Season(title: "Saison 2", description: "Le Mandalorien cherche à protéger Grogu et à le réunir avec les siens."),
            Season(title: "Saison 3", description: "Le voyage de Din Djarin le mène à de nouvelles alliances et menaces."),
            Season(title: "Saison 4", description: "Les secrets de Mandalore sont révélés alors que le conflit s'intensifie."),
            Season(title: "Saison 5", description: "Une bataille épique pour l'avenir de la galaxie se profile.")
        ]

        static let theCrown = [
            Season(title: "Saison 1", description: "La jeune reine Élisabeth II commence son règne et affronte ses premiers défis."),
            Season(title: "Saison 2", description: "Les tensions au sein de la monarchie augmentent face à une époque en pleine mutation."),
            Season(title: "Saison 3", description: "La Reine traverse les changements sociaux des années 1960 et 1970."),
            Season(title: "Saison 4", description: "L'arrivée de Diana Spencer bouleverse la famille royale."),
            Season(title: "Saison 5", description: "La monarchie est remise en question dans un monde moderne en plein essor.")
        ]
    }

extension TVShow{
    
    static let previewTVShow = TVShow(title: "Viking", image: nil, not: [78, 100, 65, 90], description: "Série ce passant à l'époque des vikings racontant le récit du célébre Ragnar Lodbrok", season: Season.viking)
    
    static let previewsTVShow = [
        TVShow(title: "Viking", image: URL(string: "https://i.pinimg.com/originals/05/3c/34/053c341838e4a28af8189e72b2b482a5.png"), not: [78, 100, 65, 90], description: "Série ce passant à l'époque des vikings racontant le récit du célébre Ragnar Lodbrok", season: Season.viking),
        
        TVShow(title: "Peaky Blinders", image: URL(string: "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-Season2-GillianMurphy-NetflixTVShow-ArtPoster_7278f9c0-3686-4c9c-9074-097ff21a3644.jpg?v=1619864586"), not: [78, 100, 65, 90], description: "Série ce passant à l'époque de l'industrialisation racontant le récit d'un des gangs les plus connu d'Angleterre à cet époque", season: Season.peakyBlinders),
        
        TVShow(title: "Stranger things", image: URL(string: "https://i.ebayimg.com/images/g/Z~4AAOSwcNtkwoW2/s-l1200.jpg"), not: [78, 100, 65, 90], description: "Série ce passant à l'époque des vikings racontant le récit du célébre Ragnar Lodbrok", season: Season.strangerThings),
        
        TVShow(title: "Breaking Bad", image: URL(string: "https://images.affiches-et-posters.com//albums/3/5539/medium/affiche-serie-breaking-bad-3509.jpg"), not: [95, 85, 92, 88], description: "Série sur la descente dans le crime d'un professeur de chimie devenu baron de la drogue.", season: Season.breakingBad),

        TVShow(title: "The Witcher", image: URL(string: "https://fr.web.img3.acsta.net/r_1280_720/pictures/23/04/26/10/07/4623206.jpg"), not: [80, 70, 75, 90], description: "Adaptation des aventures de Geralt de Riv, un chasseur de monstres dans un univers fantastique.", season: Season.theWitcher),

        TVShow(title: "The Mandalorian", image: URL(string: "https://www.ecranlarge.com/content/uploads/2022/08/swgbv7lv2proqgkxwlibdgxkz1s-758.jpg"), not: [85, 88, 90, 92], description: "Dans l'univers de Star Wars, suivez les aventures d'un chasseur de primes solitaire.", season: Season.theMandalorian),

        TVShow(title: "Game of Thrones", image: URL(string: "https://m.media-amazon.com/images/I/61W-KI4mR6L._AC_UF1000,1000_QL80_.jpg"), not: [70, 95, 88, 91], description: "Lutte pour le trône de fer dans un monde médiéval fantastique rempli de complots et de dragons.", season: Season.gameOfThrones),

        TVShow(title: "The Crown", image: URL(string: "https://www.ecranlarge.com/content/uploads/2022/10/snrhom9joy3i7ugndzbfbakiq4n-388.jpg"), not: [85, 5, 88, 10], description: "Série retraçant la vie et le règne de la reine Élisabeth II.", season: Season.theCrown)
        
    ]
}
