# Toolchain and Lexicon

## Intro
- Question: What technical tools (software, languages, applications, etc.) did we use during the prework?
  - PHP
  - PHPStorm
  - JavaScript
  - HTML
  - CSS
  - Git
  - GitHub
  
## What We Teach
- MERN stack with React
  - Linux (Ubuntu) operating system (OS) - provides the platform for our server
  - Apache webserver - responds to incoming requests and gives out information
  - MySQL database - holds the information in a way that is quickly retrievable
  - Express - Minimalist framework that creates Rest endpoints for our end users to get data
  - React frontend javascript library - Builds page elements on the browser-side
  - Bootstrap - tool to help put together responsive websites quickly
- Concepts
  - Data design
  
## Prework Tools
- **version control** - Software that tracks changes to files 
  - makes collaboration on projects easier
   - **Git** - our version control system
     - Created by Linus Torvalds for work on the Linux project
  - **GitHub** - version control hosting platform
  - **repo/repository**: specific git project
  - Git commands
    - **clone** - copy a remote repository to a local machine
    - **add** - tell Git to watch this file
    - **commit** - tell Git that this file/folder is at a point ready for tracking
      - Do this a lot!  Better too many than too few.
    - **push** - Send this code to remote repo (GitHub)
   - We will soon use command line for all git commands, and will be using git branching
- **server** - computer with special software that is accessible to remote users, usually via the web
  - **student server**: server that you have been using (bootcamp-coders.cnm.edu)
  - server commands
    - **cd**: change directory `cd /home`
    - **ls**: list files/directories
    - **mkdir**: make a new directory.
    - **rm**: remove a file
    - **rm -rf**: remove recursive force (remove a directory).  
  - **deployment** - specific project on the student server.
  - **IDE** - Integrated development environment.  Software used to write code, and provides extra related tools
    - We use PHPStorm in this class
    - Not the same as text editor!
- Snap challenge using this and other concepts tomorrow

## Open Source
- Question: Can anybody tell me what open source is?
- **open source** - code is freely available and open to use
  - Free as in beer
  - Free as in speech
  - Free as in kittens
  - **Apache License version 2.0**: Open Source License that we use for all class projects
    - allows you to take your projects after the class is over
    - anybody else can also take and use your code as long as they give you credit
    - But wait, does that mean I can't make money from my work? NO.

## Programming terminology
- **function** - a block of code that does one job well
- **parameter** or **argument** -  a value being passed into a function
  - functionName(parameter1, parameter2) {}
  - functions are a black box.
- **return value** - value given back when a function executes
  - always only one
- **body** - the code inside of the function
- **function signature** - the unique name of the function, and how you call it in other locations
  - $value = functionName(parameter1);
- **comment** - text in a code file that is there 
- **DocBlock**: special comment that defines how the function will behave
- **type**: data type (IE int, string, array, object)

## Example Function:
    /** This is a DocBlock for a dummy example function.

    @param number parameter1 first number to be added.
    @param number parameter2 second number to be added.
    @return number answer value of parameter1 plus parameter2
    **/
    function addNumbers($parameter1, $parameter2) {

    // Throw an error if parameter1 is non-integer.
     if(typeof(parameter1) !== number ) {
         console.error("parameter1 is not a number")
    }

    // Add the values together.
     answer = parameter1 + parameter2
     return $answer
    }

    // Examples of function calls.  myVariable will equal 3. 
    myVariable = addNumbers(1, 2)

    // anotherVariable will equal -6.
    anotherVariable = addNumbers(-14, 8)

    // thirdVariable will equal -3.
    thirdVariable = addNumbers(myVariable, anotherVariable)

## Style Guide
http://ddc-web-curriculum.cnm.edu/style-guide/
