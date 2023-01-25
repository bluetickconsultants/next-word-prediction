# Next word prediction

Next word prediction, also referred as Language Modelling, is the process of predicting what word or multiple words come next in an application involving the basic task of typing. 

We have been gradually accustomed to our mobile keyboards predicting the next word without even realizing it. Nowadays, emails and text based applications provides users with the ability to integrate this option directly.

Next word prediction is an application that uses transformers models to predict next word or a masked word in a sentence.

# Steps used by a computer to translate the human languages

https://user-images.githubusercontent.com/88481845/214533950-d2cf7d34-5ef4-4af6-9a07-8a14f64c72a2.jpg

**Lexical or Linguistic** analysis helps in understanding the structure and meaning of the text and is then transformed into a rule based machine learning algorithm that can solve problems and complete the desired tasks.

**The Syntactic analyzer** identifies the dependence and relationship between the words. Any logically or naturally incorrect arrangement is rejected during syntactic processing. The sentence “ A class is taking the student.” will be rejected by the analyzer.

Breaking down a string of words into meaningful and useful parts is called tokenization. This is followed by Part of Speech Tagging (PoS) which segregates each word into noun, pronoun, verb,adverb, punctuation, adjectives etc. This helps in identifying relationships among the words and simplifies the meaning of the sentences.

The process of discourse integration has two major parts known as Dependency and Constituency Parsing.

Dependency parsing defines the grammatical structure of a sentence by listing each word as a node and attaches links to its dependents, thus forming a tree-like structure.

**Discourse integration** helps with the arrangement and ordering of the sentences as it interlinks the previous sentence with the current sentence. This enables in interlinking a number of sentences and deriving the complete meaning of these paragraphs.

**Pragmatic analysis** is the most challenging part of NLP as it involves judging the context of the statement. To take an example, the statement: “Do you know what time it is?” can be interpreted in multiple ways. 

# Demo

https://user-images.githubusercontent.com/88481845/214534599-e20c643c-1c2f-497f-8776-894f12f8bfbf.mp4

### Running

NOTE: The first load take a long time since the application will download all the models. Beside 6 models running, inference time is acceptable even in CPU.

```
python app.py
```

Open your browser http://localhost:8000





