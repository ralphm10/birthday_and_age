# Birthday and Age

A simple Ruby program to calculate a user's age and next birthday based on today's date

## Getting started
```
> git clone https://github.com/ralphm10/birthday_and_age
> bundle install
```

## Running tests
```
> rspec
```

### Approach to the task

I approached this task using test-driven development, and set up the tests for both the age and next_birthday methods according to three situations;

1. A birthday that has passed this year
2. A birthday of today
3. A birthday yet to happen this year

Once the tests were passing I refactored to extract out methods of birthday_this_year and birthday_next_year to make the code easier to read.  

### Next steps

If I had more time on the task there are some extra features I would have implemented;
* Account for the edge case of a birthday of Feb 29th, with today's date later than that. At present, this would cause an error as passing in a date of <code>Date.new('non_leap_year', 2, 29)</code> will return <code>Date::Error (invalid date)</code>, so I would need a method to check if the next year is a leap year, and if not return a birthday of March 1st (I believe this is how they are treated legally in the UK!) 
* Test against invalid input when instantiating a User object. eg. Date object not passed as the second argument, non existent date passed in
* Use Timecop gem to freeze the time rather than relying on any Time/Date objects using 'today' and use doubles in the tests. At present the tests work but in certain dates in the future they will fail 
