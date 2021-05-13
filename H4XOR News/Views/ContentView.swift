//
//  ContentView.swift
//  H4XOR News
//
//  Created by 이찬진 on 2021/05/13.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView{
            List(networkManager.posts, rowContent: {post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
               
            })
            .navigationBarTitle("H4XOR NEWS Branched")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
          
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
