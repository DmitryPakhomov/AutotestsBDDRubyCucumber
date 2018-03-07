Autotest suite from testing  https://stagemord.com
1. Registration
2. Login
3. Incorrect login
4. Add post
5. Add comment

Install guide

----------ENVIROMENTS----------

Through this guide you will install and use the following:

Ruby (2.3.3 or higher)
Selenium Webdriver (3.2.1) 
Cucumber (2.4.0)
Gherkin (4.1.1)
Text Editor or IDE (SublimeText, Atom, Notepad++, Eclipse)
Firefox 

   
Windows

1. Download and install FireFox:  https://www.mozilla.org/firefox

Note: On Windows, if FireFox is installed in a non-standard location (i.e. outside Program Files) then you must add the FireFox directory to your PATH environment variable.

2. Download geckodriver https://github.com/mozilla/geckodriver/releases and add file in global PATH 
3. Use the Windows Ruby Installer: http://rubyinstaller.org/
4. Download RubyInstaller for Ruby 2.3.3 (or higher) - During the install choose to include all packages
5. Install in a directory that does not contain spaces in its path (such as C:\Ruby, but not C:\Program Files\Ruby)
6. Download the Ruby Development Kit (RDK) for your associated Ruby Installer at http://rubyinstaller.org/downloads/ in the section labeled "Development Kit"
7. Run the RDK installer and extract it somewhere permanent (for convenience, consider extracting it in the same directory as where you installed Ruby)
8. Navigate via command promit to the Ruby install folder and execute the following two commands:

$> ruby dk.rb init
$> ruby dk.rb install

9. Install the necessary gems:
$> gem install bundler
$> gem install selenium-webdriver -v 3.2.1
$> gem install cucumber
$> gem install rspec


Mac OS X
Linux

1. Download and install FireFox:  https://www.mozilla.org/firefox
2. Download geckodriver https://github.com/mozilla/geckodriver/releases and add file in global PATH 
3. $ sudo apt-get install ruby-full
   $ gem install bundler
   $ gem install selenium-webdriver
   $ gem install cucumber
   $ gem install rspec
   
   
----------RUNTIME----------
Windows
1. Download and put Synaps folder - C:\Ruby\Bin  for example C:\Ruby24-x64\bin\Synaps
2. From the folder "Synaps", run this command:
>Synaps$ cucumber -f pretty -f html -o report.html
  
Linux  
1. Download and put Synaps folder
2. From the folder "Synaps", run this command:
$> cucumber -f pretty -f html -o report.html


Results on screen or in file repost.html

Pakhomov Dmitry 2017
fotosymbol@gmail.com