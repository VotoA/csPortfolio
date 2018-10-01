# csPortfolio

* WebPage [here]()
* Lightning [here](https://votoa.github.io/lightning2/)
* JSLighting [here]()
* Dice [here}()

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
