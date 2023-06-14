//
//  CreateContactView.swift
//  FormSwiftUI
//
//  Created by Erik Loures on 03/06/23.
//

import SwiftUI

struct CreateContactView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var address = ""
    @State private var homeNumber = ""
    @State private var whatsapp = ""
    @State private var email = ""
    @State private var isSelected: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Dados Pessoais")) {
                    TextField("Nome", text: $firstName)
                    TextField("Sobrenome", text: $lastName)
                    DatePicker("Data de nascimento", selection: $birthdate, displayedComponents: .date)
                }
                Section(header: Text("Endereco")) {
                    TextField("Endereco", text: $address)
                    TextField("Bairro", text: $homeNumber)
                }
                Section(header: Text("Contato")) {
                    TextField("Whatsapp", text: $whatsapp)
                    TextField("Email", text: $email)
                    
                }
                
                VStack {
//                    Group {
//                        Toggle("É cristão? ", isOn: $isSelected)
//                        
//
//                    }
                    Group {
                        Toggle("aceita", isOn: $isSelected)                        
                            .toggleStyle(.checklist)
                            .font(.title)   
                    }
                }
                
            }
            .navigationTitle("Cadastro")
            
            
        }
    }
}
struct CreateContactView_Previews: PreviewProvider {
    static var previews: some View {
        CreateContactView()
    }
}


