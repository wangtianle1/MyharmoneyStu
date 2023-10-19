import router from '@ohos.router'

@Entry
@Component
struct Second {
  @State message: string = 'Hi there'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('Back')
            .fontWeight(FontWeight.Bold)
            .fontSize(25)

        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Back' button.`)
          // router.pushUrl({ url:'pages/index' }).then(()=>console.info(`'Succeeded in returning to the first page.'`))
          try {
            router.back()
            console.info('Succeeded in returning to the first page.')
          }catch (err){
            console.error(`Failed to return to the first page.Code is ${err.code}, message is ${err.message}`)
          }
        })
        .backgroundColor('#d9ffbd')
        .width('40%')
        .height('5%')
      }
      .width('100%')
    }
    .height("100%")
  }
}