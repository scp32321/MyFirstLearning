import router from '@ohos.router';
import User from '../ClassList/MyClass'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State One:User = {
    name:"小何",


  }

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')  // 设置唯一ID用于锚点定位
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      Button('跳转到第二页')
        .id('JumpButton')  // 按钮唯一标识
        .width(200)
        .height(50)
        .alignRules({
          // 关键定位规则
          top: { anchor: 'HelloWorld', align: VerticalAlign.Bottom },// 顶部锚定在文本底部
          middle: {
            anchor: '__container__',
            align: HorizontalAlign.Center  // 水平居中
          }
        })
        .margin({ top: 20 })  // 增加与文本的间距
        .onClick(() => {
          router.pushUrl({ url: 'pages/SecondPage' })
            .catch()
        })
    }
    .height('100%')
    .width('100%')
  }
}
