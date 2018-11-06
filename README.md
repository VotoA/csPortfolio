# csPortfolio

* WebPage [here](https://votoa.github.io/VotoTestWebPage/Testpage.html)
* Lightning [here](https://votoa.github.io/lightning2/)
* JSLighting [here](https://github.com/VotoA/lightning2/blob/gh-pages/LightningJS.js)
* Dice [here](https://votoa.github.io/dice3/)
* Chemotaxis [here](https://github.com/VotoA/chemotaxis4)
* Northeastern University [here](https://docs.google.com/presentation/d/1B0AklL4DaVBu_SNV7Yo8TksOEy3wpoK8pM0MM-cFAtA/edit?usp=sharing)
* Starfield [here](https://github.com/VotoA/starfield5)

```Java
  void move()
  {
    Position close = new Position(1600, 1600);
    float dclose = sqrt(close.getX()*close.getX()+close.getY()*close.getY());
    ArrayList<Food> a = getArrayf();
    for(int i = 0; i < getArrayf().size(); i++)
    { 
      int x = a.get(i).getPos().getX();
      int y = a.get(i).getPos().getY();
      int xDiff = x-p.getX();
      int yDiff = y-p.getY();
      float dfood = sqrt(xDiff*xDiff+yDiff*yDiff);
      if(dfood < size/2)
      {
        a.get(i).newPos();
        changeSize();
      }
      if(dfood < dclose)
      {
        close.changeX(xDiff);
        close.changeY(yDiff);
        dclose = dfood;
      }
    }
    float angle;
    if(close.getX()==0){
      if(close.getY()>0){
        angle = PI/2;
      } else
      {
        angle = -PI/2;
      }
    } else
    {
      angle = atan(abs(close.getY())/abs(close.getX()));
    }
    if(close.getY()<0 && close.getX()<0)
    {
      angle += PI;
    } 
    else if (close.getY()<0 && close.getX()>0)
    {
      angle -= 2*angle;
    } 
    else if (close.getY()>0 && close.getX()<0)
    {
      angle = PI-angle;
    }
    p.changeX(p.getX()+(int)round(3*cos(angle)));
    p.changeY(p.getY()+(int)round(3*sin(angle)));
    fill(c);
    ellipse(p.getX(), p.getY(), size, size);
  }
}
```
