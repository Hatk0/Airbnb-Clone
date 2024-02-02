import Foundation

struct Explore: Identifiable, Hashable {
    let id = UUID()
    let image: [String]
    let title: String
    let distance: String
    let price: String
    let rating: String
}

extension Explore {
    static let explore: [Explore] = [
        Explore(
            image: ["bright1", "bright2", "bright3", "bright4"],
            title: "Apartment in Buenos Aires",
            distance: "12",
            price: "$41,14",
            rating: "4.53"
        ),
        
        Explore(
            image: ["pent1", "pent2", "pent3", "pent4"],
            title: "Apartment in Buenos Aires",
            distance: "15",
            price: "$151,19",
            rating: "4.42"
        ),
        
        Explore(
            image: ["fig1", "fig2", "fig3", "fig4"],
            title: "Apartment in FIG",
            distance: "5",
            price: "$58,90",
            rating: "4.53"
        ),
        
        Explore(
            image: ["recoleta1", "recoleta2", "recoleta3", "recoleta4"],
            title: "Apartment in Buenos Aires",
            distance: "6",
            price: "$52,42",
            rating: "4.97"
        ),
        
        Explore(
            image: ["sunny1", "sunny2", "sunny3", "sunny4"],
            title: "Apartment in FMN",
            distance: "10",
            price: "$54,03",
            rating: "4.85"
        ),
        
        Explore(
            image: ["room1", "room2", "room3", "room4"],
            title: "Room in Buenos Aires",
            distance: "12",
            price: "$41,70",
            rating: "5.0"
        ),
        
        Explore(
            image: ["home1", "home2", "home3", "home4"],
            title: "Home in Buenos Aires",
            distance: "20",
            price: "$165,41",
            rating: "4.32"
        ),
        
        Explore(
            image: ["belgrano1", "belgrano2", "belgrano3", "belgrano4"],
            title: "Apartment in Belgrano",
            distance: "6",
            price: "$80,45",
            rating: "4.53"
        ),
        
        Explore(
            image: ["isidro1", "isidro2", "isidro3", "isidro4"],
            title: "Home in San Isidro",
            distance: "4",
            price: "$195,05",
            rating: "4.53"
        ),
        
        Explore(
            image: ["unique1", "unique1", "unique1", "unique1"],
            title: "Apartment in Palermo",
            distance: "2",
            price: "$60,00",
            rating: "4.85"
        ),
    ]
}
