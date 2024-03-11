import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewA()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Calls")
                }
            ViewB()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            ViewC()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
        }
    }
}
