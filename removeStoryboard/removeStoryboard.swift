/*
1.удаляем во вкладке general строку main interface
2.удаляем файл сториборда
3.в файле infoPlist удаляем строку storiboard name

для поддержки устройств не страше ios 13
в файле SceneDelegate в методе scene прописываем следующее:
*/

guard let windowScene = (scene as? UIWindowScene) else { return }
let window = UIWindow(windowScene: windowScene)
window.rootViewController = ViewController()
window.makeKeyAndVisible()
self.window = window

/*
для поддержки устройств страше ios 13
1.удаляем файл SceneDelegate
2.в файле infoPlist удаляем строку Aplication Scene Manifest
3.в файле AppDelegate удаляем все что относиться к SceneDelegate, ниже данной марки // MARK: UISceneSession Lifecycle
4.в файле AppDelegate прописываем следующее:
*/

 var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = ViewController()
		window?.makeKeyAndVisible()
		return true
	}
