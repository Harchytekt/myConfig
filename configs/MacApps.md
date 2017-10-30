# My applications for macOS
> 💡 All these apps won't be installed by [the script](../installation%20script/post_install.sh).

<!-- TOC START min:1 max:4 link:true update:true -->
- [My applications for macOS](#my-applications-for-macos)
  - [Mac App Store](#mac-app-store)
  - [Homebrew](#homebrew)
    - [Cask (Internet)](#cask-internet)
      - [Apps](#apps)
      - [Fonts](#fonts)
  - [Internet](#internet)
  - [Extensions Safari](#extensions-safari)

<!-- TOC END -->

## Mac App Store

- [1Blocker - Block ads, tracking scripts, anything](https://1blocker.com)
- [Affinity Designer](https://affinity.serif.com/en-gb/designer/)
- Better Rename 10
- [CloudMounter: encrypt cloud files, save disk space](https://mac.eltima.com/mount-cloud-drive.html)
- [Drop - Color Picker](http://dropcolorpicker.com)
- eBookBinder
- [Expressions](http://www.apptorium.com/products/expressions)
- [GoodNotes](http://www.goodnotesapp.com)
- [Image2icon - Make your own icons](http://www.img2icnsapp.com)
- [iWork](https://www.apple.com/iwork/)
    - Keynote
    - Numbers
    - Pages
- [Notability](http://gingerlabs.com)
- [Paste – smart clipboard history & snippets manager](http://pasteapp.me)
- [Pixelmator](http://www.pixelmator.com/mac/)
- [Quiver: The Programmer's Notebook](http://happenapps.com)
- RulerSwift
- [Slack](https://slack.com)
- [Snipposé](http://www.samuelwford.com/snippose)
- StuffIt 16
- [Svgsus](http://www.svgs.us)
- [Textastic](https://www.textasticapp.com/mac.html)
- [Wire — Private Messenger](https://wire.com/en/)
- [Wunderlist](https://www.wunderlist.com)
- [Xcode](https://developer.apple.com/xcode/)

## Homebrew
[Back to the beginning](#my-applications-for-macos)

- [Ant](https://ant.apache.org) - ```brew install ant```
    <!-- > Apache Ant is a Java library and command-line tool whose mission is to drive processes described in build files as targets and extension points dependent upon each other. -->
- [Bash-Completion](https://github.com/scop/bash-completion) - ```brew install bash-completion```
    <!-- > Programmable completion functions for bash -->
- [Cask](https://caskroom.github.io) - ```brew tap caskroom/cask```
    <!-- > Homebrew-Cask extends Homebrew and brings its elegance, simplicity, and speed to macOS applications and large binaries alike. -->
- [CLISP](http://clisp.org) - ```brew install clisp```
    <!-- > This is GNU CLISP - an ANSI Common Lisp Implementation -->
- [Dnsmasq](http://www.thekelleys.org.uk/dnsmasq/doc.html) - ```brew install dnsmasq```
    <!-- > Dnsmasq provides network infrastructure for small networks: DNS, DHCP, router advertisement and network boot. It is designed to be lightweight and have a small footprint, suitable for resource constrained routers and firewalls. -->
- [Exercism](http://exercism.io) - ```brew install exercism```
    <!-- > Level up your programming skills -->
    - **Configuration:** _exercism configure --key=YOUR_API_KEY_
    - **Setting up Exercism CLI completion:**
        - **Install:**
            ```bash
            mkdir -p ~/.config/exercism/
            curl http://cli.exercism.io/exercism_completion.bash > ~/.config/exercism/exercism_completion.bash
            ```
        - **Add to ```.bash_profile```:**
            ```
            if [ -f ~/.config/exercism/exercism_completion.bash ]; then
                - ~/.config/exercism/exercism_completion.bash
            fi
            ```
- [ExifTool](http://owl.phy.queensu.ca/~phil/exiftool/) - ```brew install exiftool```
    <!-- > Read, Write and Edit Meta Information! -->
- [FFmpeg](https://www.ffmpeg.org) - ```brew install ffmpeg```
    <!-- > FFmpeg is the leading multimedia framework, able to decode, encode, transcode, mux, demux, stream, filter and play pretty much anything that humans and machines have created. -->
- [Caskroom-fonts](https://github.com/caskroom/homebrew-fonts) -  ```brew tap caskroom/fonts```
    <!-- > Caskroom-fonts is a Homebrew Tap which allows you to use the same friendly Homebrew-style CLI workflow for the administration of binary font files on your Mac. -->
- [git-flow](https://github.com/nvie/gitflow) - ```brew install git-flow```
    <!-- > A collection of Git extensions to provide high-level repository operations for Vincent Driessen's branching model. -->
- [Git LFS](https://git-lfs.github.com) - ```brew install git-lfs```
    <!-- > An open source Git extension for versioning large files -->
- [Go](https://golang.org/) - ```brew install go```
    <!-- > Go is an open source programming language that makes it easy to build simple, reliable, and efficient software. -->
- [Gradle](https://www.gradle.org/) - ```brew install gradle```
    <!-- > Gradle is an open source build automation system that builds upon the concepts of Apache Ant and Apache Maven and introduces a Groovy-based domain-specific language (DSL) instead of the XML form used by Apache Maven for declaring the project configuration. -->
- [LibBPG](https://bellard.org/bpg/) - ```brew install libbpg```
    <!-- > BPG (Better Portable Graphics) is a new image format. -->
- [Lua](http://www.lua.org) - ```brew install lua```
    <!-- > Lua is a powerful, efficient, lightweight, embeddable scripting language. -->
- [MailHog](https://github.com/mailhog/MailHog) - ```brew install mailhog```
    <!-- > Web and API based SMTP testing -->
- [mas](https://github.com/mas-cli/mas) - ```brew install mas```
    <!-- > Mac App Store command line interface -->
- [MySQL](https://www.mysql.com) - ```brew install mysql```
    <!-- > MySQL is an open-source relational database management system (RDBMS). -->
- [NGINX](https://nginx.org/) - ```brew install nginx```
    <!-- > NGINX is a web server which can also be used as a reverse proxy, load balancer and HTTP cache. -->
- [Node.js](https://nodejs.org) - ```brew install node```
    <!-- > Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient. -->
- [OpenSSL](https://openssl.org/) - ```brew install openssl```
    <!-- > OpenSSL is a software library for applications that secure communications over computer networks against eavesdropping or need to identify the party at the other end. -->
- [OpenSSL 1.1](https://openssl.org/) - ```brew install openssl@1.1```
    <!-- > Last version of OpenSSL. -->
- [Pandoc](http://pandoc.org) - ```brew install pandoc```
    <!-- > If you need to convert files from one markup format into another, pandoc is your swiss-army knife. -->
- [PHP 7.2](https://secure.php.net) - ```brew install php72```
    <!-- > Last version of PHP, a server-side scripting language designed primarily for web development but also used as a general-purpose programming language. -->
- [Python3](https://www.python.org) - ```brew install python3```
    <!-- > Python is a programming language that lets you work quickly and integrate systems more effectively. -->
    - **pip3:**
        - PEP8 - ```pip install pytest-pep8```
            <!-- > PEP8 is the Style Guide for Python Code. -->
        - Pygments - ```pip3 install Pygments```
            <!-- > Pygments is a syntax highlighting package written in Python. -->
        - pytest - ```pip install pytest pytest-cache```
            <!-- > A testing tool that will give you more flexibility over running your unit tests. -->
- [webkit2png](http://www.paulhammond.org/webkit2png/) - ```brew install webkit2png```
    <!-- > webkit2png is a command line tool that creates screenshots of webpages -->
- [WebP](https://developers.google.com/speed/webp/) - ```brew install webp```
    <!-- > WebP is an image format employing both lossy and lossless compression. It is currently developed by Google, based on technology acquired with the purchase of On2 Technologies. -->

### Cask (Internet)
[Back to the beginning](#my-applications-for-macos)

#### Apps

- 1password
- 4k-video-downloader
- angry-ip-scanner
- appcleaner
- [atom](https://atom.io)
- avast
- [bartender](https://www.macbartender.com)<!-- - [beardedspice](https://beardedspice.github.io) -->
- betterzipql
- calibre
- [cryptomator](https://cryptomator.org)
- cyberduck
- dropbox
- duet
- [emojipedia](https://github.com/gingerbeardman/Emojipedia)
- [github-desktop](http://desktop.github.com)
- [gitkraken](https://www.gitkraken.com)
- [iina](https://lhc70000.github.io/iina/)
- intellij-idea
- [imageoptim](https://imageoptim.com/fr)
- java
- julia
- [mactex](https://www.tug.org/mactex/)
- malwarebytes-anti-malware
- mamp
- [macdown](http://macdown.uranusjr.com)<!-- - megasync-->
- [Objective-See](http://objective-see.com)
    <!-- - blockblock -->
    - knockknock
    <!-- - ransomwhere -->
    - oversight
- onyx
- provisionql
- qlcolorcode
- qlmarkdown
- qlstephen
- [sequel-pro](https://sequelpro.com)
- skype
- [spectacle](https://www.spectacleapp.com)
- spotify
- [the-unarchiver](https://theunarchiver.com) - _(MacPaw bought the Unarchiver Jul 27th, 2017)_
- touchbarserver

#### Fonts
[Back to the beginning](#my-applications-for-macos)

- [Fira Code](https://github.com/tonsky/FiraCode) - ```brew cask install font-fira-code```
    <!-- > A monospaced font with programming ligatures -->


## Internet
[Back to the beginning](#my-applications-for-macos)

- [Docker for Mac](https://www.docker.com/docker-mac)
- [Rocket—the fastest emoji app for your Mac](http://matthewpalmer.net/rocket/)

## Extensions Safari
[Back to the beginning](#my-applications-for-macos)

- 1Blocker - Block ads, tracking scripts, anything
- 1Password
- [Fontface Ninja](https://safari-extensions.apple.com/details/?id=com.creaktif.fontfaceninja-6AFG6428MF)
- [Instapaper](https://safari-extensions.apple.com/details/?id=com.instapaper.extension-CAM49M58WK)
- [JS Blocker](https://safari-extensions.apple.com/details/?id=com.toggleable.JavaScriptBlocker5-6S8J5HV3H4)
- [JSONAce](https://safari-extensions.apple.com/details/?id=com.jjlharrison.jsonace-635LU5M475)
- [Lookmark](https://safari-extensions.apple.com/details/?id=io.lookmark.safari.extension-A2MQ7WE8F2)
- [octotree](https://github.com/buunguyen/octotree)
- [Stylish](https://safari-extensions.apple.com/details/?id=com.sobolev.stylish-5555L95H45)
