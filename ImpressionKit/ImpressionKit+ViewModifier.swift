////
////  ImpressionKit+ViewModifier.swift
////  ImpressionKit
////
////  Created by PangMo5 on 2021/07/22.
////
//
//import Foundation
//#if canImport(SwiftUI)
//import SwiftUI
//#endif
//
//@available(iOS 13.0, *)
//private struct ImpressionView: NSViewRepresentable {
//    func updateNSView(_ nsView: NSView, context: Context) {
//        <#code#>
//    }
//    
//    let isForGroup: Bool
//    let detectionInterval: Float?
//    let durationThreshold: Float?
//    let areaRatioThreshold: Float?
//    let redetectOptions: ViewType.Redetect?
//    let onCreated: ((ViewType) -> Void)?
//    let onChanged: ((ViewType.ImpressionState) -> Void)?
//    
//    func makeNSView(context: NSViewRepresentableContext<ImpressionView>) -> ViewType {
//        let view = ViewType(frame: .zero)
////        view.backgroundColor = .clear
//        view.detectionInterval = detectionInterval
//        view.durationThreshold = durationThreshold
//        view.areaRatioThreshold = areaRatioThreshold
//        view.redetectOptions = redetectOptions
//        if !isForGroup {
//            view.detectImpression { _, state in
//                onChanged?(state)
//            }
//        }
//        onCreated?(view)
//        return view
//    }
//    
//    func updateUIView(_ uiView: ViewType, context: Context) {}
//}
//
//@available(iOS 13.0, *)
//private struct ImpressionTrackableModifier: ViewModifier {
//    let isForGroup: Bool
//    let detectionInterval: Float?
//    let durationThreshold: Float?
//    let areaRatioThreshold: Float?
//    let redetectOptions: ViewType.Redetect?
//    let onCreated: ((ViewType) -> Void)?
//    let onChanged: ((ViewType.ImpressionState) -> Void)?
//    
//    func body(content: Content) -> some View {
//        content
//            .overlay(ImpressionView(isForGroup: isForGroup,
//                                    detectionInterval: detectionInterval,
//                                    durationThreshold: durationThreshold,
//                                    areaRatioThreshold: areaRatioThreshold,
//                                    redetectOptions: redetectOptions,
//                                    onCreated: onCreated,
//                                    onChanged: onChanged)
//                        .allowsHitTesting(false))
//    }
//}
//
//@available(iOS 13.0, *)
//public extension View {
//    func detectImpression(detectionInterval: Float? = nil,
//                          durationThreshold: Float? = nil,
//                          areaRatioThreshold: Float? = nil,
//                          redetectOptions: ViewType.Redetect? = nil,
//                          onChanged: @escaping (ViewType.ImpressionState) -> Void) -> some View
//    {
//        modifier(ImpressionTrackableModifier(isForGroup: false,
//                                             detectionInterval: detectionInterval,
//                                             durationThreshold: durationThreshold,
//                                             areaRatioThreshold: areaRatioThreshold,
//                                             redetectOptions: redetectOptions,
//                                             onCreated: nil,
//                                             onChanged: onChanged))
//    }
//    
//    func detectImpression<T>(group: ImpressionGroup<T>,
//                             index: T) -> some View
//    {
//        modifier(ImpressionTrackableModifier(isForGroup: true,
//                                             detectionInterval: group.detectionInterval,
//                                             durationThreshold: group.durationThreshold,
//                                             areaRatioThreshold: group.areaRatioThreshold,
//                                             redetectOptions: group.redetectOptions,
//                                             onCreated: { view in
//                                                group.bind(view: view, index: index)
//                                             },
//                                             onChanged: nil))
//    }
//}
