# OO feedback for part 1

1. its fine to have attr_accessors and attr_readers at the bottom but it is not convention- might get annoying long term, just something to think about.
    
    ###=> thank you! done.

2. whne you default the years to 1 you only need to do that in the arguments for initialize, you do not need to then, again, set years to one in the setting part of initialize, that might mess up your code if you do pass in an attribute for years. 
    ###=> thank you! done.

3. make sure to test! that what your run file is there for. 

4. you need to have () after your initalize to hold the things that you have passed in: initialize(name, specialty, years=1)
    

# Part IV - Associations
- `appointments.rb` it's standard to call @@all that because it's short but if @@all_appointments makes you happy that's fine 
- `doctor.rb` get in the habit of putting parentheses around arguments when you define methods. It keeps your code readable and is required in multiple other languages. I would NOT call the @@all @@doctor in this file b/c you already have a lot of keyword doctor flying around and it will be confusing. The initialize should not include `@patient` or `@appointment`. Both patients and appointments will be calculated via methods. Your methods `patients` and `appointments` are identical. `appointments` is correct but your `patients` methods will get you back an array of appointment instances, not patient instances.
- `patients.rb` same notes as for `doctor.rb` for naming of @@all class variable and initialize. Same issue a well where your `Patient#doctors` method will return an array of Appointment instances, not the Doctor instances. The `appointment_with` method should create the appointment but does not need to update any instance variables as you're currently doing. Your note is correct - it is the equivalent of `Patient#create_appointment` but it needs to be named correctly. If you're given specs by your manager but decide to rename things it could break other pieces of the application and won't make a good impression on your manager. 

    

