Cocos2D Objective-C/Swift Fork by Wes Brown
===========================================
Updated for Xcode 7.0.1, iOS 9

This is a fork from the most updated version of Cocos2d-Spritebuilder.
Along with official updates, I try to remove all errors and warnings for a clean build.

Instructions on how to use:
1.) Clone to desktop, rename file cocos2d-iphone, COPY folder
2.) Go to your YOUR-PROJECT.spritebuilder, open "Source/libs"
3.) PASTE cocos2d-iphone, select MERGE so all new files are updated.
4.) Open your project in Xcode, select to convert to newest Swift syntax (if necessary), on the left perform recommended settings to silence 4-5 warnings.
5.) Clean your project and BUILD, done! :)

NOTE: If you build and test with the simulator, and receive warnings about the build is newer than being linked, follow these instructions:
1.) Select your project name (with the blue icon) at the top of the hierarchy on the left
2.) By default, Xcode shows project settings (Deployment Target, Configurations, Localizations, etc...). In the row that shows your project name along with Info and Build Settings, select your project to show a drop down
3.) select YOURPROJECTNAME iOS under the TARGET section
4.) Under Deployment Info, select Deployment Target that is applicable with the version of your simulator
5.) Warnings... GONE! :)





Below is the original README

Cocos2D-SpriteBuilder
=====================

[Cocos2D-SpriteBuilder][1] is a framework for building 2D games, demos, and other
graphical/interactive applications for iOS, Mac and Android.
It is based on the [Cocos2D][2] design, but instead of using Python it uses Swift or Objective-C.

Cocos2D-SpriteBuilder is:

  * Fast
  * Free
  * Easy to use
  * Community Supported


Creating New Projects
---------------------

New Cocos2D projects are created with SpriteBuilder. SpriteBuilder is, just like Cocos2D, free and open source. You can get SpriteBuilder from [spritebuilder.com](http://spritebuilder.com) or from the Mac App Store. Projects created using SpriteBuilder contains the complete Cocos2D source code, and after the project has been created using SpriteBuilder is optional.

SpriteBuilder also allows you to update the Cocos2D version in your project, to newest version, making it trivial to always keep you project updated to latest Cocos2D version.

You can find the full Cocos2D documentation and user guide at our [documentation page](http://cocos2d.spritebuilder.com/docs).

Features
-------------
   * Scene management (workflow)
   * Transitions between scenes
   * Sprites and Sprite Sheets
   * Effects: Lens, Ripple, Waves, Liquid, etc.
   * Actions (behaviours):
     * Trasformation Actions: Move, Rotate, Scale, Fade, Tint, etc.
     * Composable actions: Sequence, Spawn, Repeat, Reverse
     * Ease Actions: Exp, Sin, Cubic, Elastic, etc.
     * Misc actions: CallFunc, OrbitCamera, Follow, Tween
   * Basic menus and buttons
   * Integrated with [Chipmunk][4] physics engine
   * Particle system
   * Fonts:
     * Fast font rendering using Fixed and Variable width fonts
     * Support for .ttf fonts
   * Tile Map support: Orthogonal, Isometric and Hexagonal
   * Parallax scrolling
   * Motion Streak
   * Render To Texture
   * Touch/Accelerometer on iOS
   * Touch/Mouse/Keyboard on Mac
   * Sound Engine support (CocosDenshion library) based on OpenAL
   * Integrated Slow motion/Fast forward
   * Fast textures: PVR compressed and uncompressed textures
   * Point based: RetinaDisplay mode compatible
   * Language: Objective-C
   * Open Source Commercial Friendly: Compatible with open and closed source projects
   * OpenGL ES 2.0 (iOS) / OpenGL 2.1 (Mac) based


Build Requirements
------------------

Mac OS X 10.6 (or newer), Xcode 4.2 (or newer)


Runtime Requirements
--------------------
  * iOS 6.0 or newer for iOS games
  * Snow Leopard (v10.6) or newer for Mac games


Running Tests
--------------------

1. Select the test you want from Xcode Scheme chooser

2. Then click on `Xcode → Product → Run`