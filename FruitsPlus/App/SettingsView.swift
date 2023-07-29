//
//  SettingsView.swift
//  FruitsPlus
//
//  Created by Abdullah Bilgin on 7/29/23.

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruit ara sources of many essential nutrients, including npotassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        SettingsRowView(name: "Developer", content: "Abdullah")
                        SettingsRowView(name: "Designer", content: "Ceylan")
                        SettingsRowView(name: "Compatibility", content: "IOS 15")
                        SettingsRowView(name: "Website",  linkLabel: "BilginTech", linkDestination: "www.google.com")
                        SettingsRowView(name: "Twitter",  linkLabel: "@BilginTech", linkDestination: "www.google.com")
                        SettingsRowView(name: "SwiftUI", content: "2.2")
                        SettingsRowView(name: "Version", content: "2.2.0")
                        
                    } //: BOX
                    
                } //: VSTACK
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
