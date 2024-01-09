//
//  ContentView.swift
//  day8_SearchList
//
//  Created by Raghav Deo on 09/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText=""
    let names = ["Nikita","Nilam","Kavita","Vandana","Kavya","neha"]
    var body: some View {
   
        NavigationStack
        {
            List{
                ForEach(searchStrings.self,id: \.self)
                { name in
                    Section
                    {
                        Text(name).font(.title)
                    }
                }
            }
        }.searchable(text: $searchText, prompt: "Search")
    }
    
    var searchStrings:[String]
    {
        if(searchText.isEmpty)
        {
            return names
        }
        else
        {
         
            return names.filter {
               // $0.localizedCaseInsensitiveContains(searchText)
                $0.localizedCaseInsensitiveContains(searchText)
                
                
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
