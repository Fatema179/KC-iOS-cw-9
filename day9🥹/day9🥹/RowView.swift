//
//  RowView.swift
//  day9🥹
//
//  Created by Zeinab H Eldeeb on 26/08/2022.
//

import SwiftUI

struct RowView: View {
    @State var movie: String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .clipShape(Rectangle())
                .frame(width: 130, height: 130)
            Text(movie)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(movie: "Aladdin")
    }
}
