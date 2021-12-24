//
//  CustomDragDropView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct CustomDragDropView: View {
    var colors: [ColorModel] = [
        ColorModel(color: .light, name: "银色"),
        ColorModel(color: .red, name: "红色"),
        ColorModel(color: .blue, name: "蓝色")
    ]
    
    @State var dropedColor: ColorModel? = nil
    var body: some View {
        VStack {
            HStack {
                ForEach(colors) { color in
                    VStack {
                        color.color.color
                        Text(color.name)
                            .font(.caption)
                    }.onDrag {
                        return NSItemProvider(object: color)
                    }
                }
            }
            
            VStack {
                dropedColor?.color.color
                    .padding()
                Text(dropedColor?.name ?? "拖拽颜色到这里！")
                    .font(.caption)
                    .padding(.bottom)
            }
            .frame(height: 160)
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            .onDrop(of: [.color], isTargeted: nil) { providers in
                let getColor = providers.loadObjects(ofType: ColorModel.self) { color in
                    dropedColor = color
                }
                return getColor
            }
        }
    }
}

final class ColorModel: NSObject, Identifiable, Codable, NSItemProviderReading, NSItemProviderWriting {
    var id = UUID()
    var color: ColorType
    var name: String
    
    init(color: ColorType, name: String) {
        self.color = color
        self.name = name
    }
    enum ColorType: String, Codable {
        case light
        case red
        case blue
        
        var color: Color {
            switch self {
            case .light:
                return Color.light
            case .red:
                return Color.red
            case .blue:
                return Color.blue
            }
        }
    }
    
    static var writableTypeIdentifiersForItemProvider: [String]{
        return [UTType.color.identifier]
    }
    
    static var readableTypeIdentifiersForItemProvider: [String]{
        return [UTType.color.identifier]
    }
    
    func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress? {
        let progress = Progress(totalUnitCount: 100)
        do {
            let data = try JSONEncoder().encode(self)
            progress.completedUnitCount = 100
            completionHandler(data,nil)
        }
        catch {
            completionHandler(nil,error)
        }
        return progress
    }
    
    static func object(withItemProviderData data: Data, typeIdentifier: String) throws -> ColorModel {
        do {
            let subject = try JSONDecoder().decode(ColorModel.self, from: data)
            return subject
        }
        catch{
            fatalError("\(error.localizedDescription)")
        }
    }
}

extension UTType {
    static var color: UTType {
        UTType(importedAs: "com.swiftUIForDesigners.color")
    }
}

struct CustomDragDropView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDragDropView()
    }
}
