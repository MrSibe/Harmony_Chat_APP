import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  build() {
    Column() {

      // Logo
      Image($r('app.media.logo')) // Replace with your actual logo resource
        .width(240)
        .height(240)
        .margin({ top: 80, bottom: 30 })

      // Slogan
      Text('每天畅心一聊，创造我农传说')
        .fontSize(18)
        .fontColor('#333333')
        .margin({ bottom: 80 })

      // Login Button
      Button('登陆', { stateEffect: true, type: ButtonType.Capsule })
        .width('80%')
        .height(50)
        .backgroundColor('#007DFF')
        .fontColor('#FFFFFF')
        .margin({ bottom: 20 })
        .onClick(() => {
          router.pushUrl({ url: 'pages/LoginPage' }, router.RouterMode.Standard, (err) => {
            if (err) {
              console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
              return;
            }
            console.info('Invoke pushUrl succeeded.');
          })
        })

      // Register Button
      Button('注册', { stateEffect: true, type: ButtonType.Capsule })
        .width('80%')
        .height(50)
        .backgroundColor('#FFFFFF')
        .fontColor('#007DFF')
        .border({ width: 1, color: '#007DFF' })
        .margin({ bottom: 20 })
        .onClick(() => {
          router.pushUrl({ url: 'pages/RegisterPage' }, router.RouterMode.Standard, (err) => {
            if (err) {
              console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
              return;
            }
            console.info('Invoke pushUrl succeeded.');
          })
        })

      // Terms and Privacy
      Row() {
        Text('登录即表示同意')
          .fontSize(12)
          .fontColor('#999999')

        Text('服务条款')
          .fontSize(12)
          .fontColor('#007DFF')
          .margin({ left: 4, right: 4 })
          .onClick(() => {
            // Navigate to terms page
          })

        Text('和')
          .fontSize(12)
          .fontColor('#999999')

        Text('隐私政策')
          .fontSize(12)
          .fontColor('#007DFF')
          .margin({ left: 4 })
          .onClick(() => {
            // Navigate to privacy policy page
          })
      }
      .margin({ bottom: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
    .alignItems(HorizontalAlign.Center)
  }
}