import router from '@ohos.router';
import { http } from '@kit.NetworkKit';
import { BusinessError } from '@kit.BasicServicesKit';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  

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

      Row(){
        TextInput({ placeholder: '我是提示文本', text: '我是当前文本内容' })
          .flexGrow(1)
          .layoutWeight(1)
          .backgroundColor(Color.Pink);
        Button('跳转到第一页')
          .width(120)
          .height(40)
          .margin({ left: 10 })
          .fontSize(16)
        .onClick(() => {
          router.replaceUrl({
            url: 'pages/Index',
            params: { clearStack: true } // 可选参数
          })
            .catch()
        })
      }
      .width('100%') // 添加宽度约束
      .height(60)    // 根据需求设置合适高度
      .margin({ top: 20 }) // 添加间距
    }
    .height('100%')
    .width('100%')
  }
}
