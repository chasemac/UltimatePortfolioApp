//
//  ItemListViewRow.swift
//  UltimatePortfolioApp
//
//  Created by Chase McElroy on 2/1/21.
//

import SwiftUI

struct ItemListViewRow: View {
    var item: Item
    var body: some View {
        HStack(spacing: 20) {
            Circle()
                .stroke(Color(item.project?.projectColor ?? "Light Blue"), lineWidth: 3)
                .frame(width: 44, height: 44)
            VStack(alignment: .leading) {
                Text(item.itemTitle)
                    .font(.title2)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if item.itemDetail.isEmpty == false {
                    Text(item.itemDetail)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct ItemListViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemListViewRow(item: Item.example)
    }
}
