import { router } from '@kit.ArkUI';

@Entry
@Component
struct RegisterPage {
  @State nickname: string = ''
  @State username: string = ''
  @State password: string = ''
  @State confirmPassword: string = ''
  @State agreeTerms: boolean = false

  build() {
    Column() {
      // Title
      Text('注册账号')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 40, bottom: 30 })

      // Avatar Upload
      Column() {
        Image($r('app.media.avatar_placeholder')) // Placeholder image
          .width(80)
          .height(80)
          .borderRadius(40)
          .border({ width: 1, color: '#CCCCCC' })

        Text('点击上传头像')
          .fontSize(14)
          .fontColor('#666666')
          .margin({ top: 8 })
      }
      .alignItems(HorizontalAlign.Center)
      .margin({ bottom: 30 })
      .onClick(() => {
        // Handle avatar upload
      })

      // Input Fields
      TextInput({ placeholder: '请输入昵称' })
        .width('80%')
        .height(50)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .margin({ bottom: 15 })
        .onChange((value: string) => {
          this.nickname = value
        })

      TextInput({ placeholder: '请输入用户名' })
        .width('80%')
        .height(50)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .margin({ bottom: 15 })
        .onChange((value: string) => {
          this.username = value
        })

      TextInput({ placeholder: '请输入密码'})
        .type(InputType.Password) // 正确的密码输入设置方式
        .width('80%')
        .height(50)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .margin({ bottom: 15 })
        .onChange((value: string) => {
          this.password = value
        })

      TextInput({ placeholder: '请确认密码'})
        .type(InputType.Password) // 正确的密码输入设置方式
        .width('80%')
        .height(50)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .margin({ bottom: 20 })
        .onChange((value: string) => {
          this.confirmPassword = value
        })

      // Terms Checkbox
      Row() {
        Checkbox()
          .select(this.agreeTerms)
          .onChange((isChecked: boolean) => {
            this.agreeTerms = isChecked
          })

        Text('我已阅读并同意')
          .fontSize(12)
          .fontColor('#666666')
          .margin({ left: 8 })

        Text('用户协议')
          .fontSize(12)
          .fontColor('#007DFF')
          .margin({ left: 4 })
          .onClick(() => {
            // Navigate to user agreement
          })

        Text('和')
          .fontSize(12)
          .fontColor('#666666')
          .margin({ left: 4 })

        Text('隐私政策')
          .fontSize(12)
          .fontColor('#007DFF')
          .margin({ left: 4 })
          .onClick(() => {
            // Navigate to privacy policy
          })
      }
      .margin({ bottom: 30 })

      // Register Button
      Button('注册', { type: ButtonType.Capsule })
        .width('80%')
        .height(50)
        .backgroundColor('#007DFF')
        .fontColor('#FFFFFF')
        .margin({ bottom: 20 })
        .onClick(() => {
          // Handle registration
        })

      // Other registration methods
      Text('其他注册方式')
        .fontSize(14)
        .fontColor('#999999')
        .margin({ bottom: 20 })

      // Social icons would go here
      Row() {
        // Add social login icons
      }
      .margin({ bottom: 20 })

      // Login prompt
      Row() {
        Text('已有账号？')
          .fontSize(14)
          .fontColor('#666666')

        Text('立即登录')
          .fontSize(14)
          .fontColor('#007DFF')
          .onClick(() => {
            router.pushUrl({ url: 'pages/Login' }, router.RouterMode.Standard, (err) => {
              if (err) {
                console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
                return;
              }
              console.info('Invoke pushUrl succeeded.');
            })
          })
      }
      .margin({ bottom: 30 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
    .alignItems(HorizontalAlign.Center)
  }
}