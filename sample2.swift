//
//  ContentView.swift
//  ExpandableTextViewSample
//
//  Created by Venugopal on 19/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ExpandableText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut laborum", lineLimit: 3)
            
            ExpandableText("Small text", lineLimit: 3)
            
            ExpandableText("Render the limited text and measure its size, I am Venugopal Reddy ", lineLimit: 1)
            
            ExpandableText("Create a ZStack with unbounded height to allow the inner Text as much, Render the limited text and measure its size, Hide the background Indicates whether the text has been truncated in its display.", lineLimit: 3)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


import SwiftUI

struct ExpandableText: View {
    @State private var expanded: Bool = false
    @State private var truncated: Bool = false
    @State private var shrinkText: String
    
    private let text: String
    private let font: UIFont
    private let lineLimit: Int
    
    private var moreLessText: String {
        guard truncated else { return "" }
        return expanded ? " Read less" : " ... Read more"
    }
    
    init(_ text: String,
         lineLimit: Int,
         font: UIFont = UIFont.preferredFont(forTextStyle: .body)) {
        self.text = text
        self.lineLimit = lineLimit
        _shrinkText = State(wrappedValue: text)
        self.font = font
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            // Single ApexText that displays the combined and styled text
            singleApexTextBlock
                .lineLimit(expanded ? nil : lineLimit)
                .font(Font(font))
                .background(
                    // Background for measuring the text layout
                    Text(text)
                        .lineLimit(lineLimit)
                        .font(Font(font))
                        .background(
                            GeometryReader { geometry in
                                Color.clear
                                    .onAppear {
                                        adjustTextToFit(geometry: geometry)
                                    }
                            }
                        )
                        .hidden()
                )
            
            // Transparent button to toggle the expand/collapse state
            if truncated {
                Button(action: { expanded.toggle() }) {
                    HStack {
                        Spacer()
                        Text("") // Invisible tapping area
                    }
                    .opacity(0)
                }
            }
        }
    }
    
    /// Creates a single attributed text for ApexText.
    /// Styles the trailing "read more"/"read less" portion.
    private var singleApexTextBlock: Text {
        // Construct the full display string
        let displayString = (expanded ? text : shrinkText) + moreLessText
        
        var attributedString = AttributedString(displayString)
        
        // Apply styling to the trailing part if truncated
        if truncated, !moreLessText.isEmpty, let range = attributedString.range(of: moreLessText) {
            attributedString[range].font = .system(size: font.pointSize, weight: .bold)
            attributedString[range].foregroundColor = .black
            attributedString[range].underlineStyle = .single
        }
        
        // Initialize ApexText with the styled attributed string
        return Text(attributedString)
    }
    
    /// Adjusts `shrinkText` to fit within the specified `lineLimit` using a binary search approach.
    private func adjustTextToFit(geometry: GeometryProxy) {
        let size = CGSize(width: geometry.size.width, height: .greatestFiniteMagnitude)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        
        var low = 0
        var high = shrinkText.count
        var mid = high
        
        // Binary search to find the maximal substring fitting the given line limit
        while (high - low) > 1 {
            let testString = shrinkText + moreLessText
            let attributedText = NSAttributedString(string: testString, attributes: attributes)
            let boundingRect = attributedText.boundingRect(with: size, options: .usesLineFragmentOrigin, context: nil)
            
            if boundingRect.size.height > geometry.size.height {
                truncated = true
                high = mid
                mid = (high + low) / 2
            } else {
                if mid == text.count {
                    // Entire text fits, no truncation needed
                    break
                } else {
                    low = mid
                    mid = (low + high) / 2
                }
            }
            
            shrinkText = String(text.prefix(mid))
        }
        
        if truncated {
            // Fine-tune truncation aesthetics
            shrinkText = String(shrinkText.prefix(max(0, shrinkText.count - 2)))
        }
    }
}
