import router from '@ohos.router';
import {CustomDialogExample} from '../common/dialog';

@Entry
@Component
struct Index {
  //自定义对话框
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({
      cancel: this.onCancel,
      confirm: this.onAccept,
    }),
    alignment: DialogAlignment.Default,  // 可设置dialog的对齐方式，设定显示在底部或中间等，默认为底部显示
  })
  onCancel() {
    console.info('Callback when the first button is clicked')
  }
  onAccept() {
    console.info('Callback when the second button is clicked')
  }
  //index页面内容
  build() {
    Column({space:0}){
      Row(){
        TextInput({ placeholder: '搜索或输入网址' })
          .fontColor(0x000000)
          .borderRadius(5)
          .backgroundColor(0xffffff)
      }
        .layoutWeight(1)
        .backgroundColor(0xd2d2c8)
        .padding({top:4,right:8,bottom:4,left:8,})
      Text('系统Web组件加载页面')
        .layoutWeight(15)
      Row(){
        Button('后退',{type:ButtonType.Normal})
          .backgroundColor(0xffffff)
          .fontColor(0x000000)
          .width(70)
          .fontSize(15)
          .onClick(()=>{
            //用户后退确认
            //此处使用自定义对话框
            this.dialogController.open()
          })
        Button('前进',{type:ButtonType.Normal})
          .backgroundColor(0xffffff)
          .fontColor(0x000000)
          .width(70)
          .fontSize(15)
          .onClick(()=>{
            router.pushUrl({url:'pages/next'}),(err)=>{
              if (err) {
                console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
                return;
              }
            }
          })
        Button('刷新',{type:ButtonType.Normal})
          .fontColor(0x000000)
          .backgroundColor(0xffffff)
          .width(70)
          .fontSize(15)
          .onClick(()=>{
            console.info('点击刷新按钮')
          })
      }
      .layoutWeight(1)
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor(0xd2d2c8)
      .padding({top:0,right:5,bottom:0,left:5})
      .margin(0)
      .width('100%')
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .height('100%')
  }
}

