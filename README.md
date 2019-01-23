# csPortfolio

#### Projects:
##### [WebPage](https://votoa.github.io/VotoTestWebPage/Testpage.html)
##### [Lightning](https://votoa.github.io/lightning2/)
##### [Chemotaxis](https://votoa.github.io/chemotaxis4/)
##### [Northeastern University](https://docs.google.com/presentation/d/e/2PACX-1vRSWhHeVxREhqrWZYRBTPLhoSAa4oWYVoTR_yrK4-zmqprpj5gXilt8YTGcdqJFN1u6k2PypLda1qIM/pub?start=true&loop=true&delayms=15000)
##### [Starfield](https://votoa.github.io/starfield5/)

#### Reflections:
###### Webpage:
* This project is a webpage designd using HTML and CSS which shows off several photos that I personally took several years ago. This was my first experience using HTML and CSS and I feel that it has given me a solid base to learn the languages off of, but, at the time of writing this, I still don't understand the mechanics either language.
###### Lightning:
* This project is a Java graphics program which demonstrates the use of the random class, basic 2D graphics, and a timer. It was mostly a review for the first two aspects mentioned, but the program especially helped to show me how to use a timer.
###### JSLightning:
* This project is the same as the previous but in JavaScript. It was also my introduction to coding with JS which has turned out to be very helpful experience. After completing it, I feel relatively confident using JS.
###### Dice
* This is another Java project which demonstrates basic graphics and use of the random class, however it also uses a custom object. It was once again a review, but it helped me to really understand classes and methods rather than just knowing how to use them.
###### Chemotaxis
* This project was an excercise in multiple custom object use and how they can interact, and adaptable and complicated math within a Java program. This project actually helped me to learn to streamline my programs. The first version was too resource intensive to run embedded in a website so it forced me to cut down on it's memory usage.
###### Northeastern University
* This is a non-coding slide presentation which was given in conjunction with a verbal presentation. It is meant to inform about Northeastern University, and, in particular, their computer science program. The process of researching helped me to understand what paths were available in the computer science field both in education and research.
###### Starfield:
* This project was another review of using objects in conjunction with graphics. It also featured the use of an interface which was my first sucessful use of one. This greatly helped me to understand the relationship between interfaces and objects.

#### Code Example:
```Java
void direction()
  {
    Food a = getFood();
    int xDiff = a.getX()-x;
    int yDiff = a.getY()-y;
    dfood = sqrt(xDiff*xDiff+yDiff*yDiff);
    if (xDiff==0) {
      if (yDiff>0) {
        angle = PI/2;
      } else
      {
        angle = -PI/2;
      }
    } else
    {
      angle = atan(abs(yDiff)/abs(xDiff));
    }
    if (yDiff<0 && xDiff<0)
    {
      angle += PI;
    } else if (yDiff<0 && xDiff>0)
    {
      angle -= 2*angle;
    } else if (yDiff>0 && xDiff<0)
    {
      angle = PI-angle;
    }
  }
```

* The code above is from the the Chemotaxis program which I worked on independently. It shows a method from the Bacteria class in which an individual Bacteria object determines the direction to move in based on where the Food object is. The two main problems I had while creating this were primarily the sucessful implementation of the adaptable trigonometric equations, and secondarily streamlining the process. The first was difficult due to having to compensate for how Java took in values for the trigonometric equations and having to compensate for necessitating 360 degree movement of the object. These processes of compensation can be shown in the conditional statements in the method. The second problem was difficult, because it involved taking out certain functionalities and moving others from the method while keeping the main function of the program working. Evidence of this process isn't readily shown due to it mostly involving removing code, but, before the problem was dealt with, the method had about 60% more lines and did what is now done using 2 methods and some things which are no longer done.

###### Misc:
* At this point in my programming experience, the two things that I am most proud of are my sizable knowledge of Java's mechanics and methods, and my newly aquired knowledge of other programming languages such as JavaScript, HTML, and CSS. This class is the first in which I have begun to really understand Java as opposed to simply knowing how to implement it as well as the first that I have used HTML and CSS in. I feel that both of these have helped me immensely in terms of understanding the larger computer science field.
* The most significant computer science hurdle that I had to overcome during the last trimester of school occurred during my website project. The hurdle was simply the use of HTML and CSS. We were essentially thrown into the deep end: we were told to make a creative website about whatever we wanted using the given languages and a blank website. I overcame this hurdle essentially by teaching myself basic HTML. I used several online sources to do this, and ended with the product which is linked at the top of this page.
