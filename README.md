# csPortfolio
* WebPage [here](https://github.com/VotoA/lightning2/blob/gh-pages/Lightning.pde "https://github.com/VotoA/lightning2/blob/gh-pages/Lightning.pde").
* Lightning [here](https://github.com/VotoA/lightning2/blob/gh-pages/LightningJS.js "https://github.com/VotoA/lightning2/blob/gh-pages/LightningJS.js").
* Lightning JS [here](https://votoa.github.io/lightning2/ "https://votoa.github.io/lightning2/").

~~~~
int StartX = 0;
int StartY = (int)(Math.random()*201)+200;
int EndX = 0;
int EndY = (int)(Math.random()*201)+200;
void setup()
{
size(600, 600);
background(30, 30, 30);
strokeWeight(3);
}
void draw()
{
    //background(0);
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
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
        StartX = EndX;
        StartY = EndY;
    }
}
void mousePressed()
{
    StartX = 0;
    StartY = (int)(Math.random()*201)+200;
    EndX = 0;
    EndY = (int)(Math.random()*201)+200;
}
void keyPressed()
{
    StartX = 0;
    StartY = (int)(Math.random()*201)+200;
    EndX = 0;
    EndY = (int)(Math.random()*201)+200;
}
~~~~
