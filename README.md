# csPortfolio

#### Projects:
##### [WebPage](https://votoa.github.io/VotoTestWebPage/Testpage.html)
##### [Chemotaxis](https://votoa.github.io/chemotaxis4/)
##### [Starfield](https://votoa.github.io/starfield5/)
##### [Tarantino Runner](https://github.com/VotoA/TarantinoRunner)
##### [Collections Labs](https://github.com/VotoA/Collections)
##### [Stacks and Queues Labs](https://github.com/VotoA/Stacks-and-Queues)
##### [Node Data Structures Labs](https://github.com/VotoA/Node-Data-Structures)
##### [Snake Evolution](https://github.com/VotoA/Snake)

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
* These labs served as a review of basic Java data structures, and an introduction for more complicated ones such as Maps and Sets.
###### Stacks and Queues:
* These labs served as a introduction to the Java data structures: Stacks and Queues. 
###### Node Data Structures:
* These labs served as an introduction to Trees and Linked Lists, but they also served as difficult practice in tracing code.
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

* The code above is from the the Snake AI program. It shows the relatively simple deep neural network which I used for the Snakes. It is a polymorphic network which could be implemented into many different programs, but it is limited in what type of learning it can do. It is essentially random learning which only efficiently functions while being used as part of a greater population. The main difficulty in creating it resided in how to transverse the necessary data in order for it to function. The solution is evident above from how the single evaluate method's functions are split down into multiple other methods. This helped to split the work apart and make the work manageable.
