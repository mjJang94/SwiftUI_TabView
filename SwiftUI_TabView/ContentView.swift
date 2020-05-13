//
//  ContentView.swift
//  SwiftUI_TabView
//
//  Created by Paymint on 2020/05/13.
//  Copyright © 2020 Paymint. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    private var clientName = "민트학원"
    
    var body: some View {
        
        VStack(){
            
            
            
            HStack(alignment: .firstTextBaseline){
                
                HStack{
                    Image(systemName: "person").padding(.leading, 10.0)
                    Text(clientName).padding(.leading, 5.0)
                }
                Spacer()
                Image(systemName: "bell").padding(.trailing, 10.0)
            }.frame(height: 50)
            
            
            
            NavigationView{
                
                TabView(selection: $selection){
                    
                    Text("홈")
                        .tabItem{
                            Image(systemName: "house")
                            Text("홈")
                    }.tag(1)
                    
                    Text("청구서발송")
                        .tabItem{
                            Image(systemName: "message")
                            Text("청구서발송")
                    }.tag(2)
                    
                    Text("발송/수납내역")
                        .tabItem{
                            Image(systemName: "doc")
                            Text("발송/수납내역")
                    }.tag(3)
                    
                    Text("메뉴")
                        .tabItem{
                            Image(systemName: "text.justify")
                            Text("메뉴")
                    }.tag(4)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

