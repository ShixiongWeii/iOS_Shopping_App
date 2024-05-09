//
//  MainView.swift
//  ModerneShopping
//
// Created by Shixiong Wei on 2024-04-13.
//

import SwiftUI

struct MainView: View {
    @StateObject var products = ProductsListObject()
    @StateObject var cartItems = CartViewModel()
    @StateObject var user = UserViewModel()
    var body: some View {
        TabView{
            HomeView(productsList: products, user: user).environmentObject(cartItems)
                .tabItem {
                    Image(systemName:"house")
                    Text("Home")
                }
            CartView(cartProducts: cartItems)
                .environmentObject(user)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            ProfilView()
                .environmentObject(user)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
        .zIndex(10)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
