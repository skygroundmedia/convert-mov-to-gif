# Convert an MOV file to GIF

Convert MOV files into animated GIF's for quick preview and e-mail friendly sharing. 


# Getting Started

This was designed for Mac OS X users.  

## Install Homebrew

[Homebrew](http://www.chrisjmendez.com/2016/01/10/installing-homebrew-on-mac-os-x/) is a package manager for Mac OS x. You will need this to later download a few open source libraries. 

## Install FFmpeg

Using homebew, you will need to install ```ffmpeg```.  This is the tool that will compress your existing .mov file.

```language-powerbash
brew install ffmpeg
```

## Install Quartz

Quartz is required to use the next package, Gifsicle.
```language-powerbash
brew cask install xquartz
```

## Install Gifsicle
```language-powerbash
brew install gifsicle
```


---


# Run Ruby Script

I created a Convert class that will do all the work. I also made it Object Oriented so that you can later decide to integrate it into a larger application. 
```language-powerbash
ruby Converter.rb
```


---

# Final Thoughts

Using this simple class as my base, I can easily integrate this into a Rake Task or maybe use ```FileList``` to do more work with string manipulation. Hopefully this simple tutorial shows you that the possibilities are infinite using Ruby, Shell, and home-brew.


---


# Resources

- If you want to learn more about how ```%x``` works in Ruby, read [this tutorial](https://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/)