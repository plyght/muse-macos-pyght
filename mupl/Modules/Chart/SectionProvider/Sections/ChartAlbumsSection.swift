//
//  ChartAlbumsSection.swift
//  mupl
//
//  Created by Tamerlan Satualdypov on 15.02.2024.
//

import SwiftUI
import MusicKit

extension ChartSectionProvider {
    struct AlbumsSection: ProvidableSection {
        func section(with value: MusicCatalogChart<Album>) -> some View {
            ScrollableSection(title: value.title, items: value.items) { item in
                NavigationLink(value: item) {
                    TrackCollectionItem(item: item, kind: .medium)
                }
                .buttonStyle(.plain)
            }
        }
        
        func skeleton() -> some View {
            ScrollableSection.Skeleton(quantity: 8) {
                TrackCollectionItem.Skeleton(kind: .medium)
            }
        }
    }
}
