//
//  ContentView.swift
//  Online LEARNING
//
//  Created by admin3 on 2/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    //@State var mySubject: Color = .pink
    var body: some View {
       
            VStack {
                Image("banner")
                    .padding(.bottom,5)
                HStack{
                    Text("User : std 00007")
                        .foregroundColor(Color.white)
                        .frame(width: 140, height: 30)
                        .background(Color.gray)
                        .cornerRadius(5)
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.orange)
                } //HS1
                .padding([.leading,.trailing])
                .padding(.bottom,5)
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 3)
                    .clipped()
                    .opacity(0.5)
                Text("KPN")
                    .font(.system(size: 38))
                    .fontWeight(.black)
                    .foregroundColor(Color.purple)
                    .shadow(color: .yellow, radius: 5)
                Text("Online LEARNING")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.116, saturation: 1.0, brightness: 1.0))
                    .shadow(color: .yellow, radius: 5)
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 5)
                    .clipped()
                    .opacity(0.8)
                    .padding(.bottom)
                HStack{
                    Image("update1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 90)
                        .clipped()
                        .border(.yellow, width: 2)
                    Image("update2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 90)
                        .clipped()
                        .border(.yellow, width: 2)
                        .padding([.leading,.trailing])
                    Image("update3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 90)
                        .clipped()
                        .border(.yellow, width: 2)
                } //H3
            
                .padding(.bottom)
                
                HStack{
                    Text("Choose Subject")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(Color(hue: 0.962, saturation: 4.6, brightness: 0.8))
                }
                .padding(.bottom)
                HStack{
                    NavigationLink(destination: MattayomClassMath(subject: "Math")){
                        Text("Math")
                            .font(.system(size: 30))
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .foregroundStyle(.red)
                            .frame(width: 100, height: 50)
                            .background(Color(hue: 1.0, saturation: 0.614, brightness: 1.0))
                            .cornerRadius(12)
                    }//end nav link1
                    NavigationLink(destination: MattayomClassEnglish(subject: "English")){
                        Text("English")
                            .font(.system(size: 30))
                            .fontWeight(.black)
                            .foregroundStyle(.white)
                            .frame(width: 130, height: 50)
                            .background(Color(hue: 0.575, saturation: 0.559, brightness: 1.0))
                            .cornerRadius(12)
                    }//end nav link2
                    NavigationLink(destination: MattayomClassThai(subject: "Thai")){
                        Text("Thai")
                            .font(.system(size: 30))
                            .fontWeight(.black)
                            .foregroundStyle(.white)
                            .frame(width: 90, height: 50)
                            .background(Color(hue: 0.118, saturation: 0.733, brightness: 0.999))
                            .cornerRadius(12)
                    }//end nav link3

                }
                .padding(.bottom)
                Text("💣 Countdown 💣")
                    .fontWeight(.semibold)
                    .font(.system(size: 25))
                HStack{
                    VStack{
                        Text("10")
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .foregroundColor(Color.red)
                            .frame(width: 80, height: 80)
                            .background(Color(red: 0.976, green: 0.976, blue: 0.976))
                            .cornerRadius(5)
                            .border(Color(red: 0.689, green: 0.186, blue: 0.771), width: 8)
                            .cornerRadius(5)
                        Text("Final M.1-3")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                    } //VS
                    .padding([.leading,.trailing])
                    VStack{ // countdown
                        Text("12")
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .foregroundColor(Color.red)
                            .frame(width: 80, height: 80)
                            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.976))
                            .cornerRadius(5)
                            .border(Color(hue: 0.811, saturation: 0.755, brightness: 0.769), width: 8)
                            .cornerRadius(5)
                        Text("Final M.4-6")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                    } //VS countdown
                } //HS2
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 3)
                    .clipped()
                    .opacity(0.5)
                HStack{
                    Text("Contact :")
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                    Image("ig_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
                //Spacer()
            } //v1
            //.navigationTitle("Welcome to KPN Online Learning")
        } //body
    } //view
#Preview {
    ContentView()
}


//              HStack{
//                Text("Subject 📃")
//                    .fontWeight(.medium)
//                    .font(.system(size: 23))
//                    .foregroundColor(Color.white)
//                    .frame(width: 125, height: 33)
//                    .background(Color(hue: 0.903, saturation: 0.493, brightness: 1.0))
//                    .cornerRadius(5)
//                Spacer()
//                Picker("", selection: $mySubject){
//                    Text("Math").tag(Color.blue)
//                    Text("Thai").tag(Color.red)
//                    Text("English").tag(Color.green)
//                } //picker
//                .tint(self.mySubject)
//            } //HS2
//            .padding(.bottom,60)
//            Button("Submit"){
//
//            } //button
//            .font(.system(size: 25))
//            .fontWeight(.medium)
//            .foregroundColor(Color.white)
//            .frame(width: 140, height: 40)
//            .background(Color(hue: 0.768, saturation: 1.0, brightness: 0.569))
//            .cornerRadius(5)
//            .shadow(radius: 3)
//            .padding(.bottom)
