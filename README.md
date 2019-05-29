# csPortfolio

#### Projects:
##### [WebPage](https://votoa.github.io/VotoTestWebPage/Testpage.html)
##### [Chemotaxis](https://votoa.github.io/chemotaxis4/)
##### [Starfield](https://votoa.github.io/starfield5/)
##### [Tarantino Runner](https://github.com/VotoA/TarantinoRunner)
##### [Collections Labs](https://github.com/VotoA/Collections)
##### [Stacks and Queues Labs](https://github.com/VotoA/Stacks-and-Queues)
##### [Node Data Structures Labs](https://github.com/VotoA/Node-Data-Structures)
##### [Snake AI](https://github.com/VotoA/Snake)

#### Reflections:
###### Webpage:
* This project is a webpage designd using HTML and CSS which shows off several photos that I personally took several years ago. This was my first experience using HTML and CSS and I feel that it has given me a solid base to learn the languages off of, but, at the time of writing this, I still don't understand the mechanics of either language.
###### Lightning:
* This project is a Java graphics program which demonstrates the use of the random class, basic 2D graphics, and a timer. It was mostly a review for the first two aspects mentioned, but the program especially helped to show me how to use a timer.
###### Chemotaxis
* This project was an exercise in multiple custom object use and how they can interact, and adapt. This project actually helped me to learn to streamline my programs. The first version was too resource intensive to run embedded in a website so it forced me to cut down on it's memory usage.
###### Starfield:
* This project was another review of using objects in conjunction with graphics. It also featured the use of an interface which was my first sucessful use of one. This greatly helped me to understand the relationship between interfaces and objects.
###### Tarantino Runner:
* This project was an exercise in large data analysis. It primarily demonstrates a ground-up built UI as well as multiple forms of data analysis.
###### Collections:
* These Labs 
###### Stacks and Queues:
* 
###### Node Data Structures:
* 
###### Snake AI:
* This program was a large step forward in terms of the knowledge I gained from it. It is the first program that I coded using Python, as well as the first time I explored building and using any type of machine learning.

#### Code Example:
```Python
class Neural_Network:
	def __init__(self, inputSize, outputSize, hiddenLayerCount, hiddenLayerSize, weights, mutateRate):
		self.inputSize = inputSize
		self.outputSize = outputSize
		self.hiddenLayerCount = hiddenLayerCount
		self.hiddenLayerSize = hiddenLayerSize
		self.weights = weights
		self.mutateRate = mutateRate
	def sigmoid(self, x):
		return (1/(1+math.exp(-x)))
	def evaluateNode(self, node, layer, inputs):
		count = 0
		value = 0
		for input in inputs:
			value+=input*self.weights[layer][node][count]
			count+=1
		return self.sigmoid(value)
	def evaluateLayer(self, layer, inputs):
		output = []
		for node in range(self.hiddenLayerSize):
			output.append(self.evaluateNode(node, layer, inputs))
		return output	
	def evaluate(self, inputs):
		finalInputs = inputs
		for layer in range(self.hiddenLayerCount):
			finalInputs = self.evaluateLayer(layer, finalInputs)
		output = []
		for node in range(self.outputSize):
			count = 0
			value = 0
			for input in finalInputs:
				value += input*self.weights[-1][node][count]
				count += 1
			output.append(self.sigmoid(value))
		return output
	def mutate(self):
		for layer in range(self.hiddenLayerCount):
			for node in range(self.hiddenLayerSize):
				for weight in range(len(self.weights[layer][node])):
					self.weights[layer][node][weight] += random.uniform(-1.0, 1.0)*self.mutateRate
		for node in range(self.outputSize):
			for weight in range(len(self.weights[-1][node])):
				self.weights[-1][node][weight] += random.uniform(-1.0, 1.0)*self.mutateRate
	def randomizeWeights(self):
		for layer in range(self.hiddenLayerCount):
			for node in range(self.hiddenLayerSize):
				for weight in range(len(self.weights[layer][node])):
					self.weights[layer][node][weight] = random.uniform(-1.0, 1.0)
		for node in range(self.outputSize):
			for weight in range(len(self.weights[-1][node])):
				self.weights[-1][node][weight] = random.uniform(-1.0, 1.0)
```

* The code above is from the the Chemotaxis program which I worked on independently. It shows a method from the Bacteria class in which an individual Bacteria object determines the direction to move in based on where the Food object is. The two main problems I had while creating this were primarily the sucessful implementation of the adaptable trigonometric equations, and secondarily streamlining the process. The first was difficult due to having to compensate for how Java took in values for the trigonometric equations and having to compensate for necessitating 360 degree movement of the object. These processes of compensation can be shown in the conditional statements in the method. The second problem was difficult, because it involved taking out certain functionalities and moving others from the method while keeping the main function of the program working. Evidence of this process isn't readily shown due to it mostly involving removing code, but, before the problem was dealt with, the method had about 60% more lines and did what is now done using 2 methods and some things which are no longer done. -----Change-----

###### Misc:
* At this point in my programming experience, the two things that I am most proud of are my sizable knowledge of Java's mechanics and methods, and my newly aquired knowledge of other programming languages such as JavaScript, HTML, and CSS. This class is the first in which I have begun to really understand Java as opposed to simply knowing how to implement it as well as the first that I have used HTML and CSS in. I feel that both of these have helped me immensely in terms of understanding the larger computer science field.
* The most significant computer science hurdle that I had to overcome during the last trimester of school occurred during my website project. The hurdle was simply the use of HTML and CSS. We were essentially thrown into the deep end: we were told to make a creative website about whatever we wanted using the given languages and a blank website. I overcame this hurdle essentially by teaching myself basic HTML. I used several online sources to do this, and ended with the product which is linked at the top of this page. -----Change-----
