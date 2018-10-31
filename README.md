# csPortfolio

* WebPage [here](https://votoa.github.io/VotoTestWebPage/Testpage.html)
* Lightning [here](https://votoa.github.io/lightning2/)
* JSLighting [here](https://github.com/VotoA/lightning2/blob/gh-pages/LightningJS.js)
* Dice [here](https://votoa.github.io/dice3/)
* Chemotaxis [here](https://github.com/VotoA/chemotaxis4)
* Northeastern University [here](https://docs.google.com/presentation/d/1B0AklL4DaVBu_SNV7Yo8TksOEy3wpoK8pM0MM-cFAtA/edit?usp=sharing)
* Starfield [here](https://github.com/VotoA/starfield5)

```Java
while(EndX <= 600)
    {
        EndX = StartX + (int)(Math.random()*10);
        EndY = StartY + (int)(Math.random()*31)-15;
        line(StartX, StartY, EndX, EndY);
        //Down
        line(EndX, EndY, EndX, 600);
        line((StartX+EndX)/2, (StartY+EndY)/2, (StartX+EndX)/2, 600);
        line((((StartX+EndX)/2)+StartX)/2, (((StartY+EndY)/2)+StartY)/2, (((StartX+EndX)/2)+StartX)/2, 600);
        line((((StartX+EndX)/2)+EndX)/2, (((StartY+EndY)/2)+EndY)/2, (((StartX+EndX)/2)+EndX)/2, 600);
        //Right
        //line(EndX, EndY, 600, EndY);
        //line((StartX+EndX)/2, (StartY+EndY)/2, 600, (StartY+EndY)/2);
        //line((((StartX+EndX)/2)+StartX)/2, (((StartY+EndY)/2)+StartY)/2, 600, (((StartY+EndY)/2)+StartY)/2);
        //line((((StartX+EndX)/2)+EndX)/2, (((StartY+EndY)/2)+EndY)/2, 600, (((StartY+EndY)/2)+EndY)/2);
        StartX = EndX;
        StartY = EndY;
    }
}
```
