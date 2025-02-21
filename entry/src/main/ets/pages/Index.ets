import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      Button('跳转到第二页')
        .width(200)
        .height(50)
        .margin(20)
        .onClick(() => {
          // 核心跳转代码
          router.pushUrl({
            url: 'pages/SecondPage' // 与main_pages.json配置的路径一致
          }).catch()
        })
    }
    .height('100%')
    .width('100%')
  }
}