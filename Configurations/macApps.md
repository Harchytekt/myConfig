# My applications for macOS
> 💡 All these apps won't be installed by [the script](../installation%20script/post_install.sh).

<!-- TOC START min:1 max:4 link:true update:true -->
- [My applications for macOS](#my-applications-for-macos)
  - [Mac App Store](#mac-app-store)
  - [Homebrew](#homebrew)
    - [Cask (Internet)](#cask-internet)
      - [Apps](#apps)
      - [Fonts](#fonts)
      - [QuickLook Plugins](#quicklook-plugins)
  - [Internet](#internet)
  - [Node with npm](#node-with-npm)
  - [Extensions Safari](#extensions-safari)

<!-- TOC END -->

## Mac App Store

- [1Blocker - Block ads, tracking scripts, anything](https://1blocker.com)
- [Affinity Designer](https://affinity.serif.com/en-gb/designer/)
- Better Rename 10
- [ColorSlurp](http://colorslurp.com)
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
- [Snipposé](http://www.samuelwford.com/snippose)
- StuffIt 16
- [Textastic](https://www.textasticapp.com/mac.html)
- [Wire — Private Messenger](https://wire.com/en/)
- [Xcode](https://developer.apple.com/xcode/)

## Homebrew
[Back to the beginning](#my-applications-for-macos)

> To have some infos on the package (version,…), you can use this line before intalling:
> ```brew info packageName```

- [Ant](https://ant.apache.org) - ```brew install ant```
- [aria2](https://aria2.github.io) - ```brew install aria2```
- [bash-completion](https://github.com/scop/bash-completion) - ```brew install bash-completion```
- [Cask](https://caskroom.github.io) - ```brew tap caskroom/cask```
- [CLISP](http://clisp.org) - ```brew install clisp```  
	> Dependencies: **libsigsegv, readline**
- [Exercism](http://exercism.io) - ```brew install exercism```
    <!-- > Level up your programming skills -->
    > ⚠️ May have changed...
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
- [FFmpeg](https://www.ffmpeg.org) - ```brew install ffmpeg```  
	> Dependencies: **lame, x264, xvid**
- [git](https://git-scm.com) - ```brew install git```
- [git-flow](https://github.com/nvie/gitflow) - ```brew install git-flow```
- [Git LFS](https://git-lfs.github.com) - ```brew install git-lfs```
- [Go](https://golang.org/) - ```brew install go```
- [Gradle](https://www.gradle.org/) - ```brew install gradle```
- **Java** ☕️
	- [jEnv](http://www.jenv.be) ```brew install jenv```
		> _jEnv is a command line tool to help you forget how to set the JAVA_HOME environment variable_
	- [Java](https://jdk.java.net/) ```brew cask install java```
- [Lua](http://www.lua.org) - ```brew install lua```
- [MailHog](https://github.com/mailhog/MailHog) - ```brew install mailhog```
- [mas](https://github.com/mas-cli/mas) - ```brew install mas```
- [mycli](https://www.mycli.net) - ```brew install mycli```  
	> Dependencies: **gdbm, readline, sqlite**
- [MySQL](https://www.mysql.com) - ```brew install mysql```
- [Neovim](https://neovim.io) - ```brew install neovim```  
	> Dependencies: **gettext, jemalloc, libtermkey, libuv, libvterm, luajit, msgpack, unibilium**
- [Node.js](https://nodejs.org) & npm - ```brew install node npm```
- [OpenSSL](https://openssl.org/) - ```brew install openssl```
- [OpenSSL 1.1](https://openssl.org/) - ```brew install openssl@1.1```
- [Pandoc](http://pandoc.org) - ```brew install pandoc```
- [PHP 7.2](https://secure.php.net) - ```brew install php@7.2```  
	> Dependencies: **apr, apr-util, argon2, aspell, autoconf, freetds, libpng, freetype, libffi, pcre, glib, gmp, jpeg, libpq, libsodium, libzip, libtool, unixodbc, webp**
- Python  
	> Dependencies: **gdbm, readline, sqlite, xz**
- [Python3](https://www.python.org) - ```brew install python3```
    - **pip3:**
        - PEP8 - ```pip install pytest-pep8```
        - Pygments - ```pip3 install Pygments```
        - pytest - ```pip install pytest pytest-cache```
- Python@2  
	> Dependencies: **gdbm, readline, sqlite**
- [rust](https://www.rust-lang.org/) - ```brew install rust```  
	> Dependencies: **libssh2, pkg-config**
- [tnftpd- FTP for macOS 10.13+](https://github.com/Homebrew/homebrew-core/blob/305fd893941f86bb9ec0b3d35c24eca1aa661707/Formula/tnftpd.rb) - ```brew install tnftpd```  
	> NetBSD's FTP server (built from macOS Sierra sources).  
	> ⚠️ To install because Apple removed it in High Sierra _(macOS 10.13)_ for security. ⚠️

### Cask (Internet)
[Back to the beginning](#my-applications-for-macos)

> To have some infos on the package (version,…), you can use this line before intalling:
> ```brew cask info packageName```

#### Apps

- 1password
- 4k-video-downloader
<!-- >- angry-ip-scanner -->
- appcleaner
- [atom](https://atom.io)
- [bartender](https://www.macbartender.com)
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
- [imageoptim](https://imageoptim.com/fr)
- java
- [JetBrains Toolbox App](https://www.jetbrains.com/toolbox/app/?fromMenu) - ```brew cask install jetbrains-toolbox```
- julia - ```brew cask install julia```
- [mactex](https://www.tug.org/mactex/)
- malwarebytes-anti-malware
- mamp
- [macdown](http://macdown.uranusjr.com)
- provisionql
- qlcolorcode
- qlmarkdown
- qlstephen
- [sequel-pro](https://sequelpro.com)
- [spectacle](https://www.spectacleapp.com)
- spotify
- touchbarserver

#### QuickLook Plugins
[Back to the beginning](#my-applications-for-macos)

- [ProvisionQL](https://github.com/ealeksandrov/ProvisionQL) - ```brew cask install provisionql```
    <!-- > Preview iOS / macOS app and provision information -->
- [QLColorCode](https://github.com/n8gray/QLColorCode) - ```brew cask install qlcolorcode```
    <!-- > Preview source code files with syntax highlighting -->
- [QLImageSize](https://github.com/Nyx0uf/qlImageSize) - ```brew cask install qlimagesize```
    <!-- > Display the dimensions of an image and its file size in the title bar. It can also preview and generate Finder thumbnails for bpg and WebP. -->
- [QLMarkdown](https://github.com/toland/qlmarkdown) - ```brew cask install qlmarkdown```
    <!-- > Preview Markdown files -->
- [QLStephen](https://github.com/whomwah/qlstephen) - ```brew cask install qlstephen```
    <!-- > Preview plain text files without or with unknown file extension. Example: README, CHANGELOG, index.styl, etc. -->

## Internet
[Back to the beginning](#my-applications-for-macos)

- [Docker for Mac](https://www.docker.com/docker-mac)
- [QuickLook plugin for BPG](https://github.com/Nyx0uf/qlImageSize)
- [Rocket—the fastest emoji app for your Mac](http://matthewpalmer.net/rocket/)

## Node with npm
[Back to the beginning](#my-applications-for-macos)

- [gfm-preview](https://www.npmjs.com/package/gfm-preview) - ```npm install --global gfm-preview```
- [Sass](http://sass-lang.com) - ```npm install -g sass```

## Extensions Safari
[Back to the beginning](#my-applications-for-macos)

- 1Blocker - Block ads, tracking scripts, anything
- 1Password
- [Fontface Ninja](https://safari-extensions.apple.com/details/?id=com.creaktif.fontfaceninja-6AFG6428MF)
- [Instapaper](https://safari-extensions.apple.com/details/?id=com.instapaper.extension-CAM49M58WK)
- [JSONAce](https://safari-extensions.apple.com/details/?id=com.jjlharrison.jsonace-635LU5M475)
- [Stylish](https://safari-extensions.apple.com/details/?id=com.sobolev.stylish-5555L95H45)


> Screenshot of the ```brew list``` on 08/06/2018
![brew list](../brewList.png "brew list")
