@Entry
@Component
struct Las {
  build() {
    Row() {
      Column() {
        Text('后退：这是上一页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}