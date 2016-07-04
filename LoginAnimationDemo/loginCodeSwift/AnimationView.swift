//
//  AnimationView.swift
//
//  Code generated using QuartzCode 1.39.10 on 16/7/4.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class AnimationView: UIView {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = true
	
	
	
	//MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupProperties()
		setupLayers()
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		setupProperties()
		setupLayers()
	}
	
	
	
	func setupProperties(){
		
	}
	
	func setupLayers(){
		let bgsunny = CALayer()
		bgsunny.frame    = CGRectMake(0, -1.56, 320, 571.12)
		bgsunny.contents = UIImage(named:"bg-sunny.jpg")?.CGImage
		self.layer.addSublayer(bgsunny)
		layers["bgsunny"] = bgsunny
		
		let bgsunnycloud = CALayer()
		bgsunnycloud.frame    = CGRectMake(-216.67, 113.7, 246.06, 50)
		bgsunnycloud.contents = UIImage(named:"bg-sunny-cloud-1")?.CGImage
		self.layer.addSublayer(bgsunnycloud)
		layers["bgsunnycloud"] = bgsunnycloud
		
		let bgsunnycloud2 = CALayer()
		bgsunnycloud2.frame    = CGRectMake(105.82, 136.03, 206.42, 49)
		bgsunnycloud2.contents = UIImage(named:"bg-sunny-cloud-2")?.CGImage
		self.layer.addSublayer(bgsunnycloud2)
		layers["bgsunnycloud2"] = bgsunnycloud2
		
		let bgsunnycloud3 = CALayer()
		bgsunnycloud3.frame    = CGRectMake(222.16, 309.76, 74, 35)
		bgsunnycloud3.contents = UIImage(named:"bg-sunny-cloud-3")?.CGImage
		self.layer.addSublayer(bgsunnycloud3)
		layers["bgsunnycloud3"] = bgsunnycloud3
		
		let bgsunnycloud4 = CALayer()
		bgsunnycloud4.frame    = CGRectMake(13.53, 344.76, 115, 50)
		bgsunnycloud4.contents = UIImage(named:"bg-sunny-cloud-4")?.CGImage
		self.layer.addSublayer(bgsunnycloud4)
		layers["bgsunnycloud4"] = bgsunnycloud4
		
		let image = CALayer()
		image.frame    = CGRectMake(0, 3.39, 320, 10.52)
		image.contents = UIImage(named:"image3")?.CGImage
		self.layer.addSublayer(image)
		layers["image"] = image
		
		let topText = CATextLayer()
		topText.frame           = CGRectMake(-212.66, 77.63, 212.16, 39.87)
		topText.contentsScale   = UIScreen.mainScreen().scale
		topText.string          = "Bahama Login\n"
		topText.font            = "Helvetica-Light"
		topText.fontSize        = 30
		topText.alignmentMode   = kCAAlignmentCenter;
		topText.foregroundColor = UIColor.whiteColor().CGColor;
		self.layer.addSublayer(topText)
		layers["topText"] = topText
		
		let g_userName = CALayer()
		g_userName.frame = CGRectMake(-270.81, 118, 260, 34.07)
		
		self.layer.addSublayer(g_userName)
		layers["g_userName"] = g_userName
		let userName = CAShapeLayer()
		userName.frame     = CGRectMake(0, 0, 260, 34.07)
		userName.fillColor = UIColor.whiteColor().CGColor
		userName.lineWidth = 0
		userName.path      = userNamePath().CGPath;
		g_userName.addSublayer(userName)
		layers["userName"] = userName
		let text_UserName = CATextLayer()
		text_UserName.frame           = CGRectMake(11.78, 7.09, 92.79, 18.99)
		text_UserName.contentsScale   = UIScreen.mainScreen().scale
		text_UserName.string          = "User  name"
		text_UserName.font            = "Helvetica-Light"
		text_UserName.fontSize        = 16
		text_UserName.alignmentMode   = kCAAlignmentCenter;
		text_UserName.foregroundColor = UIColor(red:0.737, green: 0.737, blue:0.761, alpha:1).CGColor;
		g_userName.addSublayer(text_UserName)
		layers["text_UserName"] = text_UserName
		
		let g_password = CALayer()
		g_password.frame = CGRectMake(-270.81, 168, 260, 34.07)
		
		self.layer.addSublayer(g_password)
		layers["g_password"] = g_password
		let password = CAShapeLayer()
		password.frame     = CGRectMake(0, 0, 260, 34.07)
		password.fillColor = UIColor.whiteColor().CGColor
		password.lineWidth = 0
		password.path      = passwordPath().CGPath;
		g_password.addSublayer(password)
		layers["password"] = password
		let text_password = CATextLayer()
		text_password.frame           = CGRectMake(18.04, 7.54, 78.62, 18.99)
		text_password.contentsScale   = UIScreen.mainScreen().scale
		text_password.string          = "Password\n"
		text_password.font            = "Helvetica-Light"
		text_password.fontSize        = 16
		text_password.alignmentMode   = kCAAlignmentCenter;
		text_password.foregroundColor = UIColor(red:0.737, green: 0.737, blue:0.761, alpha:1).CGColor;
		g_password.addSublayer(text_password)
		layers["text_password"] = text_password
		
		let g_login = CALayer()
		g_login.frame         = CGRectMake(49.59, 222.81, 220.82, 48.71)
		g_login.masksToBounds = true
		
		self.layer.addSublayer(g_login)
		layers["g_login"] = g_login
		let rg_login = CAShapeLayer()
		rg_login.frame         = CGRectMake(0, 0, 220.82, 48.71)
		rg_login.masksToBounds = true
		rg_login.lineCap       = kCALineCapRound
		rg_login.fillColor     = UIColor(red:0.565, green: 0.816, blue:0.286, alpha:1).CGColor
		rg_login.lineWidth     = 0
		rg_login.path          = rg_loginPath().CGPath;
		g_login.addSublayer(rg_login)
		layers["rg_login"] = rg_login
		let Login = CATextLayer()
		Login.frame           = CGRectMake(24.25, 4.31, 155.99, 37.44)
		Login.contentsScale   = UIScreen.mainScreen().scale
		Login.string          = "Login\n"
		Login.font            = "Helvetica"
		Login.fontSize        = 30
		Login.alignmentMode   = kCAAlignmentCenter;
		Login.foregroundColor = UIColor(red:0.0431, green: 0.341, blue:0.165, alpha:1).CGColor;
		g_login.addSublayer(Login)
		layers["Login"] = Login
	}
	
	
	
	//MARK: - Animation Setup
	
	func addUntitled1Animation(){
		addUntitled1AnimationCompletionBlock(nil)
	}
	
	func addUntitled1AnimationCompletionBlock(completionBlock: ((finished: Bool) -> Void)?){
		if completionBlock != nil{
			let completionAnim = CABasicAnimation(keyPath:"completionAnim")
			completionAnim.duration = 1.6
			completionAnim.delegate = self
			completionAnim.setValue("Untitled1", forKey:"animId")
			completionAnim.setValue(false, forKey:"needEndAnim")
			layer.addAnimation(completionAnim, forKey:"Untitled1")
			if let anim = layer.animationForKey("Untitled1"){
				completionBlocks[anim] = completionBlock
			}
		}
		
		let fillMode : String = kCAFillModeForwards
		
		////Bgsunnycloud animation
		let bgsunnycloudOpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		bgsunnycloudOpacityAnim.values   = [0, 0, 1]
		bgsunnycloudOpacityAnim.keyTimes = [0, 0.5, 1]
		bgsunnycloudOpacityAnim.duration = 1
		
		let bgsunnycloudUntitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([bgsunnycloudOpacityAnim], fillMode:fillMode)
		layers["bgsunnycloud"]?.addAnimation(bgsunnycloudUntitled1Anim, forKey:"bgsunnycloudUntitled1Anim")
		
		////Bgsunnycloud2 animation
		let bgsunnycloud2OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		bgsunnycloud2OpacityAnim.values   = [0, 0, 1]
		bgsunnycloud2OpacityAnim.keyTimes = [0, 0.467, 1]
		bgsunnycloud2OpacityAnim.duration = 1.2
		
		let bgsunnycloud2Untitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([bgsunnycloud2OpacityAnim], fillMode:fillMode)
		layers["bgsunnycloud2"]?.addAnimation(bgsunnycloud2Untitled1Anim, forKey:"bgsunnycloud2Untitled1Anim")
		
		////Bgsunnycloud3 animation
		let bgsunnycloud3OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		bgsunnycloud3OpacityAnim.values   = [0, 0, 1]
		bgsunnycloud3OpacityAnim.keyTimes = [0, 0.643, 1]
		bgsunnycloud3OpacityAnim.duration = 1.4
		
		let bgsunnycloud3Untitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([bgsunnycloud3OpacityAnim], fillMode:fillMode)
		layers["bgsunnycloud3"]?.addAnimation(bgsunnycloud3Untitled1Anim, forKey:"bgsunnycloud3Untitled1Anim")
		
		////Bgsunnycloud4 animation
		let bgsunnycloud4OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		bgsunnycloud4OpacityAnim.values   = [0, 0, 1]
		bgsunnycloud4OpacityAnim.keyTimes = [0, 0.688, 1]
		bgsunnycloud4OpacityAnim.duration = 1.6
		
		let bgsunnycloud4Untitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([bgsunnycloud4OpacityAnim], fillMode:fillMode)
		layers["bgsunnycloud4"]?.addAnimation(bgsunnycloud4Untitled1Anim, forKey:"bgsunnycloud4Untitled1Anim")
		
		////TopText animation
		let topTextPositionAnim      = CAKeyframeAnimation(keyPath:"position")
		topTextPositionAnim.values   = [NSValue(CGPoint: CGPointMake(-106.578, 82.312)), NSValue(CGPoint: CGPointMake(160.533, 87.875))]
		topTextPositionAnim.keyTimes = [0, 1]
		topTextPositionAnim.duration = 0.5
		
		let topTextUntitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([topTextPositionAnim], fillMode:fillMode)
		layers["topText"]?.addAnimation(topTextUntitled1Anim, forKey:"topTextUntitled1Anim")
		
		////G_userName animation
		let g_userNamePositionAnim       = CAKeyframeAnimation(keyPath:"position")
		g_userNamePositionAnim.values    = [NSValue(CGPoint: CGPointMake(-140.211, 135.033)), NSValue(CGPoint: CGPointMake(160, 134.729))]
		g_userNamePositionAnim.keyTimes  = [0, 1]
		g_userNamePositionAnim.duration  = 0.5
		g_userNamePositionAnim.beginTime = 0.3
		
		let g_userNameUntitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([g_userNamePositionAnim], fillMode:fillMode)
		layers["g_userName"]?.addAnimation(g_userNameUntitled1Anim, forKey:"g_userNameUntitled1Anim")
		
		////G_password animation
		let g_passwordPositionAnim       = CAKeyframeAnimation(keyPath:"position")
		g_passwordPositionAnim.values    = [NSValue(CGPoint: CGPointMake(-140, 185.033)), NSValue(CGPoint: CGPointMake(159.398, 185.033))]
		g_passwordPositionAnim.keyTimes  = [0, 1]
		g_passwordPositionAnim.duration  = 0.504
		g_passwordPositionAnim.beginTime = 0.4
		
		let g_passwordUntitled1Anim : CAAnimationGroup = QCMethod.groupAnimations([g_passwordPositionAnim], fillMode:fillMode)
		layers["g_password"]?.addAnimation(g_passwordUntitled1Anim, forKey:"g_passwordUntitled1Anim")
	}
	
	//MARK: - Animation Cleanup
	
	override func animationDidStop(anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValueForKey(anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.valueForKey("needEndAnim") as! Bool{
				updateLayerValuesForAnimationId(anim.valueForKey("animId") as! String)
				removeAnimationsForAnimationId(anim.valueForKey("animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValuesForAnimationId(identifier: String){
		if identifier == "Untitled1"{
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["bgsunnycloud"] as! CALayer).animationForKey("bgsunnycloudUntitled1Anim"), theLayer:(layers["bgsunnycloud"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["bgsunnycloud2"] as! CALayer).animationForKey("bgsunnycloud2Untitled1Anim"), theLayer:(layers["bgsunnycloud2"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["bgsunnycloud3"] as! CALayer).animationForKey("bgsunnycloud3Untitled1Anim"), theLayer:(layers["bgsunnycloud3"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["bgsunnycloud4"] as! CALayer).animationForKey("bgsunnycloud4Untitled1Anim"), theLayer:(layers["bgsunnycloud4"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["topText"] as! CALayer).animationForKey("topTextUntitled1Anim"), theLayer:(layers["topText"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["g_userName"] as! CALayer).animationForKey("g_userNameUntitled1Anim"), theLayer:(layers["g_userName"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["g_password"] as! CALayer).animationForKey("g_passwordUntitled1Anim"), theLayer:(layers["g_password"] as! CALayer))
		}
	}
	
	func removeAnimationsForAnimationId(identifier: String){
		if identifier == "Untitled1"{
			(layers["bgsunnycloud"] as! CALayer).removeAnimationForKey("bgsunnycloudUntitled1Anim")
			(layers["bgsunnycloud2"] as! CALayer).removeAnimationForKey("bgsunnycloud2Untitled1Anim")
			(layers["bgsunnycloud3"] as! CALayer).removeAnimationForKey("bgsunnycloud3Untitled1Anim")
			(layers["bgsunnycloud4"] as! CALayer).removeAnimationForKey("bgsunnycloud4Untitled1Anim")
			(layers["topText"] as! CALayer).removeAnimationForKey("topTextUntitled1Anim")
			(layers["g_userName"] as! CALayer).removeAnimationForKey("g_userNameUntitled1Anim")
			(layers["g_password"] as! CALayer).removeAnimationForKey("g_passwordUntitled1Anim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func userNamePath() -> UIBezierPath{
		let userNamePath = UIBezierPath(rect:CGRectMake(0, 0, 260, 34))
		return userNamePath;
	}
	
	func passwordPath() -> UIBezierPath{
		let passwordPath = UIBezierPath(rect:CGRectMake(0, 0, 260, 34))
		return passwordPath;
	}
	
	func rg_loginPath() -> UIBezierPath{
		let rg_loginPath = UIBezierPath(rect:CGRectMake(0, 0, 221, 49))
		return rg_loginPath;
	}
	
	
}
