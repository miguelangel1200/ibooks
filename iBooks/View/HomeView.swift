//
//  HomeView.swift
//  iBooks
//
//  Created by MAC43 on 2/12/22.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        NavigationView{
            VStack{
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $searchText)
                    .padding(12)
                    .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.green, lineWidth: 2)
                    )
                    .padding()
                    .keyboardType(.webSearch)
                    .onSubmit {
                        if searchText.isEmpty { return }
                            Task {
                                await homeViewModel.getBooks(search: searchText)
                            }
                    }
                
                List(homeViewModel.items, id: \.volumeInfo.title) { book in
                    BookRowView(book: book)
            }
                .listStyle(.inset)
            }
            .navigationTitle("Ibooks")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
