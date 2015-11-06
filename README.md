# KRNSafariActivity
A UIActivity subclass that opens URLs in Safari - in Swift : https://github.com/Kireyin/KRNSafariActivity

Simply add the activity when instanciating your UIActivityViewController

    let activityVC = UIActivityViewController(activityItems: [title, url], applicationActivities: [KRNSafariActivity()])

If you want to use an other icon instead of the default one, you can specify a custom image at init

    let activityVC = UIActivityViewController(activityItems: [title, url], applicationActivities: [KRNSafariActivity(image: myCustomUIImage)])
