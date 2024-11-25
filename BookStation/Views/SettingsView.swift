import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Button{}
                label:{
                Text("Change email")
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                }
            Button{}
                label:{
                Text("Change password")
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                }
            Button{}
                label:{
                Text("Change phone")
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                }
            Button{}
                label:{
                Text("Change name")
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                }
        }.navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
