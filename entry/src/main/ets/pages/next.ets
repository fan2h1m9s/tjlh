@Entry
@Component
struct Nex {


  build() {
    Row() {
      Column() {
        Text('前进：这是下一页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}