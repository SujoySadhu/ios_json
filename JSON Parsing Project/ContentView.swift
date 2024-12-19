

import SwiftUI

struct ContentView: View {
    private var people: [Person] = Person.allPeople
    
   var body: some View {
         
         NavigationView {
             List {
                 ForEach(people) { person in
                     NavigationLink(destination: PersonView(person: person)) {
                         Text("\(person.firstName) \(person.surname)")
                             .font(.headline)
                     }
                 }
             }
             .navigationTitle("People")
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

