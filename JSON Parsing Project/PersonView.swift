import SwiftUI

struct PersonView: View {
    var person: Person
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                Text("\(person.firstName) \(person.surname)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                HStack {
                    Text("Gender: \(person.gender)")
                    Spacer()
                    Text("Age: \(person.age)")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Address")
                        .font(.headline)
                    Text("\(person.address.streetAddress)")
                    Text("\(person.address.city), \(person.address.state) \(person.address.postalCode)")
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Phone Numbers")
                        .font(.headline)
                    ForEach(person.phoneNumbers) { phoneNumber in
                        HStack {
                            Text(phoneNumber.type)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text(phoneNumber.number)
                                .font(.subheadline)
                        }
                    }
                }
                
            }
            .padding()
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.samplePerson)
    }
}
