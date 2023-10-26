//
//  CustomPDFView.swift
//  ImpactAndSystems
//
//  Created by Smith, Nathanael on 9/26/23.
//

import SwiftUI
import PDFKit

struct CustomPDFView: View
{
    var url: URL
    
    var body: some View
    {
        PDFKitRepresentedView(documentURL: url)
            .accessibilityLabel("")
            .accessibilityValue("")
    }
}

struct PDFKitRepresentedView : UIViewRepresentable
{
    let documentURL : URL
    
    init(documentURL : URL)
    {
        self.documentURL = documentURL
    }
    
    func makeUIView(context : Context) -> some UIView
    {
        let pdfView : PDFView = PDFView()
        
        pdfView.document = PDFDocument(url: self.documentURL)
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        pdfView.minScaleFactor = 0.5
        pdfView.maxScaleFactor = 5.0
        
        return pdfView
    }
    
    func updateUIView(_ uiView : UIViewType, context : Context) -> Void
    {
        
    }
}

#Preview ("Custom PDF Viewer")
{
    CustomPDFView(url: randomURL)
}
