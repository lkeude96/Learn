# Week 1

### Solving a Simple Code Problem

* To compile Java code use `javac -encoding UTF-8 <FILENAME>` and to run it use `java -Xmx1024m <FILENAME>`
* In this section, we worked on the A plus B assignment

### Solving a More Challenging Code Problem

* __Integer Overflow bug__
    * On most modern machine, an __*int*__ range from _−2,147,483,648_ to _2,147,483,647_
    * To solve it we replaced the variable type with __*long*__
    * a __*long*__ ranges from _−9,223,372,036,854,775,807_ to _9,223,372,036,854,775,807_.
* __Implementing a Faster Solution__
    * Most modern machines can perform roughly 10^9 basic operations per second on average depending on the machine.
* __Testing__
    * Testing Techniques
        1. We first start by doing a few small manual tests
        2. A test for each possible type of answer (smallest answer, biggest answer, answer doesn't exist, etc.)
        3. Test for time and memory limits
        4. Test for Corner cases
        5. Stress Testing
    * Stress Testing consist of four parts:
        1. The solution you want to tests
        2. A different, possibly trivial and very slow, but easy to implement and obviously correct solution to the problem.
        3. A test generator
        4. An infinite loop in which a new test is generated, it is fed into both solutions, then the results are compared, and if they differ, the test and both answers are output, and the program stops, otherwise the loop repeats.
    * Always try to find the smallest test cases on which your solution fails.
