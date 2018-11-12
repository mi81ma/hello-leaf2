import Vapor

struct  WelcomContext :Encodable {
    var message :String
}


struct DisplayDishesContext :Encodable {
    var dishes :[Dish]
}


/// Register your application&apos;s routes here.
public func routes(_ router: Router) throws {

    router.get("hello") { request in
        return try request.view().render("index")
    }


    router.get("display-dishes") { request -> Future<View> in

        let dishes = [Dish(name: "Cheese Cake"), Dish(name: "Meat Balls"), Dish(name: "Chiken Tenders")]

        let context = DisplayDishesContext(dishes: dishes)

        return try request.view().render("display-dishes", context)

    }

    

    router.get("welcome") { request -> Future<View> in

        let context = WelcomContext(message: "Welcome to Leaf Templates")

        return try request.view().render("index", context)
    }
}
