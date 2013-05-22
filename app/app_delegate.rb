class AppDelegate
  def application(application, didFinishLaunchingWithOptions: launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    colors_controller             = ColorsController.alloc.initWithNibName(nil, bundle: nil)
    navigation_controller         = UINavigationController.alloc.initWithRootViewController colors_controller
    tab_controller                = UITabBarController.alloc.initWithNibName(nil, bundle: nil)

    tab_controller.viewControllers= [navigation_controller]
    @window.rootViewController    = tab_controller

    true
  end
end
