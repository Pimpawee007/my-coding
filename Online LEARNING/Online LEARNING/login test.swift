//
//  login test.swift
//  Online LEARNING
//
//  Created by admin3 on 3/10/2567 BE.
//

import SwiftUI

struct login: View {
    var body: some View {
        NavigationView{
                VStack{
                    HStack{
                        Image("kpnLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.orange)
                        Text("KPN")
                            .font(.system(size: 30))
                            .fontWeight(.black)
                            .foregroundColor(Color.purple)
                            .shadow(color: .yellow, radius: 5)
                        Text("Online LEARNING")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.116, saturation: 1.0, brightness: 1.0))
                            .shadow(color: .yellow, radius: 5)
                    }
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.orange)
                        .padding(.bottom,40)
                    Text("Username : __________")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 210, height: 45)
                        .background(Color.blue)
                        .cornerRadius(6)
                        .padding(.bottom,5)
                    Text("Password : __________")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 210, height: 45)
                        .background(Color.red)
                        .cornerRadius(6)
                        .padding(.bottom)
                    NavigationLink(destination: ContentView()){
                        Text("Log In")
                            .fontWeight(.medium)
                            .font(.system(size: 20))
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .foregroundStyle(.red)
                            .frame(width: 80, height: 50)
                            .background(Color.black)
                            .cornerRadius(12)
                    }
                }
            }

    }
}

#Preview {
    login()
}
