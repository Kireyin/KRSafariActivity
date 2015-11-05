# KRSafariActivity
A UIActivity subclass that opens URLs in Safari - in Swift : https://github.com/Kireyin/KRSafariActivity

Simply add the activity when instanciating your UIActivityViewController

    let activityVC = UIActivityViewController(activityItems: [title, url], applicationActivities: [KRSafariActivity()])

If you want to use an other icon instead of the default one, you can specify a custom image at init

    let activityVC = UIActivityViewController(activityItems: [title, url], applicationActivities: [KRSafariActivity(image: myCustomUIImage)])
