//
//  CardView.swift
//  StudySwiftCard
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    var card: Card
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    var gradient = [Color("Color01"), Color("Color02")]
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var showAlert: Bool = false
    // MARK: - Body
    var body: some View {
        // ZStack 用于创建前后重叠内容的专用🆚型容器，如果想在图片上放置一些文本，可以使用它
        // ZStack 的对齐方式默认为中心对齐
        // 其工作方式类似的还有横向HStack和纵向VStack堆栈容器
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: moveDownward ? -220 : -300)
            Button(action: {
                print("点击事件")
                playSound(sound: "sound-transitions", type: "mp3")
                hapticImpact.impactOccurred()
                self.showAlert.toggle()
            }, label: {
                HStack{
                    Text(card.callToAction)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .accentColor(.blue)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            })
            .offset(y: moveDownward ? 210 : 300)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
        .alert(isPresented: $showAlert, content: {
            // 为什么$showAlert ，一般iOS开发中参数的传递都是以值拷贝的形式传递的，即系统会将当前变量的值得副本作为参数传递给调用的方法，这样的好处在于速度快，不会造成内存调用的混乱，而且在函数内部修改参数的值，并不会影响上一层面的参数变量的值
            // 但是当我们确实需要在调用的方法中直接修改传递进来的参数的值，从而影响上一级层面做出相应的界面更新，$符号用于传递变量的引用地址
            Alert(title: Text(card.title), message: Text(card.message), dismissButton: .default(Text("OK")))
        })
    }
}

// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
    }
}
