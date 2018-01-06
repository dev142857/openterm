<p align="center">
<img src="readme-resources/hero.png" style="max-height: 160px;" alt="Terminal for iOS">
</p>

<h1 align="center">Terminal for iOS</h1>

<p align="center">
<a href="https://itunes.apple.com/app/terminal/id1323205755?mt=8&at=1010lII4"><img src="readme-resources/app_store_badge.svg" alt="Download on the App Store"/></a>
</p>

<p align="center">
<a href="https://developer.apple.com/swift/"><img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat" style="max-height: 300px;" alt="Swift"/></a>
<img src="https://img.shields.io/badge/platform-iOS-lightgrey.svg" style="max-height: 300px;" alt="Platform: iOS">
<a href="http://twitter.com/LouisDhauwe"><img src="https://img.shields.io/badge/Twitter-@LouisDhauwe-blue.svg?style=flat" style="max-height: 300px;" alt="Twitter"/></a>
</p>

## About
This is a sandboxed command line interface for iOS. 


Commands included:

|	| 	|  | |
| ------------- |-------------| -----| -----|
|cat | cd | chflags | chksum |
| clear | compress | cp | curl |
| date | du | egrep | fgrep |
| grep | gunzip | gzip | help |
| link | ln | ls | mkdir |
| mv | printenv | readlink | rm |
| rmdir | stat | sum | tar |
| touch | uname | uncompress | uptime |
| wc | whoami | | |


## Dependencies
This project uses a modified version of [ios_system](https://github.com/holzschu/ios_system), which requires OpenSSL. For convenience both of these are included in the `Dependencies` folder.

## Running
Open `Terminal.xcworkspace`, change the bundle identifier to an identifier linked to your Apple developer account in order to run. Build using the `Terminal` scheme. Please note that with the current setup you can only build for arm64 (so no iOS simulator).

## License

This project is available under the MIT license. See the LICENSE file for more info.
