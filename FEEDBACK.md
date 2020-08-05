# OO feedback for part 1

1. its fine to have attr_accessors and attr_readers at the bottom but it is not convention- might get annoying long term, just something to think about.

2. whne you default the years to 1 you only need to do that in the arguments for initialize, you do not need to then, again, set years to one in the setting part of initialize, that might mess up your code if you do pass in an attribute for years. 

3. make sure to test! that what your run file is there for. 

4. you need to have () after your initalize to hold the things that you have passed in: initialize(name, specialty, years=1)