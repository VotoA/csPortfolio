# csPortfolio

#### [WebPage](https://votoa.github.io/VotoTestWebPage/Testpage.html)
#### [Lightning](https://votoa.github.io/lightning2/)
#### [JSLighting](https://votoa.github.io/lightning2/LightningP5/index.html)
#### [Dice](https://votoa.github.io/dice3/)
#### [Chemotaxis](https://votoa.github.io/chemotaxis4/)
#### [Northeastern University](https://docs.google.com/presentation/d/e/2PACX-1vRSWhHeVxREhqrWZYRBTPLhoSAa4oWYVoTR_yrK4-zmqprpj5gXilt8YTGcdqJFN1u6k2PypLda1qIM/pub?start=true&loop=true&delayms=15000)
#### [Starfield](https://votoa.github.io/starfield5)

##### Code Example
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
*

##### Reflections
###### Webpage:
*
###### Lightning:
*
###### JSLightning:
*
###### Dice
*
###### Chemotaxis
*
###### Northeastern University
*
###### Starfield:
*
###### Misc:
1.
2.
