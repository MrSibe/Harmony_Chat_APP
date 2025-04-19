import { router } from '@kit.ArkUI';

@Entry
@Component
struct Login {
  @State phoneOrEmail: string = ''
  @State password: string = ''
  @State rememberMe: boolean = false

  build() {
    Column() {
      // Logo区域
      Image($r('app.media.logo')) // 替换为您的实际logo资源
        .width(120)
        .height(120)
        .margin({ top: 60, bottom: 40 })

      // 欢迎标题
      Text('欢迎登录')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 40 })

      // 手机号/邮箱输入
      TextInput({ placeholder: '请输入手机号/邮箱' })
        .width('80%')
        .height(50)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .margin({ bottom: 15 })
        .onChange((value: string) => {
          this.phoneOrEmail = value
        })

      // 密码输入
      TextInput({ placeholder: '请输入密码' })
        .width('80%')
        .height(50)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .type(InputType.Password)
        .margin({ bottom: 15 })
        .onChange((value: string) => {
          this.password = value
        })

      // 记住密码和忘记密码
      Row() {
        // 记住密码
        Row() {
          Checkbox()
            .select(this.rememberMe)
            .onChange((checked: boolean) => {
              this.rememberMe = checked
            })
          Text('记住密码')
            .fontSize(14)
            .margin({ left: 8 })
        }

        // 忘记密码
        Text('忘记密码？')
          .fontSize(14)
          .fontColor('#007DFF')
          .margin({ left: 40 })
          .onClick(() => {
            // 跳转忘记密码页面
          })
      }
      .width('80%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ bottom: 30 })

      // 登录按钮
      Button('登录', { type: ButtonType.Capsule })
        .width('80%')
        .height(50)
        .backgroundColor('#007DFF')
        .fontColor('#FFFFFF')
        .margin({ bottom: 30 })
        .onClick(() => {
          // 处理登录逻辑
        })

      // 其他登录方式
      Text('其他登录方式')
        .fontSize(14)
        .fontColor('#999999')
        .margin({ bottom: 20 })

      // 社交登录图标（示例）
      Row() {
        Image($r('app.media.wechat')) // 微信图标
          .width(40)
          .height(40)
          .margin({ right: 20 })
          .onClick(() => {
            // 微信登录逻辑
          })

        Image($r('app.media.qq')) // QQ图标
          .width(40)
          .height(40)
          .onClick(() => {
            // QQ登录逻辑
          })
      }
      .margin({ bottom: 30 })

      // 注册引导
      Row() {
        Text('还没有账号？')
          .fontSize(14)
          .fontColor('#666666')

        Text('立即注册')
          .fontSize(14)
          .fontColor('#007DFF')
          .onClick(() => {
            router.pushUrl({ url: 'pages/Register' })
          })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
    .alignItems(HorizontalAlign.Center)
  }
}