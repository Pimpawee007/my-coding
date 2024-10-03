//
//  MattayomClassTahi.swift
//  Online LEARNING
//
//  Created by admin3 on 3/10/2567 BE.
//

import SwiftUI

struct MattayomClassThai: View {
    @State var yourClass: Color = .black
    @State var totalDownload: Int = 0
    @State var showAlert: Bool = false
    @State var sureAlert: Bool = false
    var subject : String
    var body: some View {
        VStack{
            Text("Choose class\nbefore Download")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .shadow(color: .red, radius: 3)
                .padding(.bottom,80)
            Image(systemName: "book.pages.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .padding(.bottom,70)
                .foregroundColor(self.yourClass)
            HStack{ //H2
                Text("Your Class : ")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .padding([.leading, .trailing])
                Spacer()
                Picker("", selection: $yourClass){
                    Text("M.1").tag(Color.pink)
                    Text("M.2").tag(Color.blue)
                    Text("M.3").tag(Color.orange)
                }// size pick
                .tint(self.yourClass)
            } // H2
            .padding([.leading, .trailing])
            .padding(.bottom,50)
            Button {
                if yourClass == .black {
                    showAlert = true
                } else {
                    sureAlert = true
                }
            } label: {
                Text("Download")
                    .font(.system(size: 25))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .frame(width: 140, height: 40)
                    .background(Color(hue: 0.768, saturation: 1.0, brightness: 0.569))
                    .cornerRadius(5)
                    .shadow(radius: 3)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("No Class Selected"),
                    message: Text("Please choose a class!"),
                    dismissButton: .default(Text("OK"))
                )
            }
            .alert("Are you sure?", isPresented: $sureAlert) {
                Button("OK") {
                    totalDownload += 1
                }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("You are about to download for the selected class.")
            }
        }
        .padding(.bottom,30)
        Text("Total Download : \(totalDownload)")
            .font(.system(size: 20))
            .fontWeight(.medium)
    }
}

#Preview {
    MattayomClassMath(subject: "Test subject")
}
