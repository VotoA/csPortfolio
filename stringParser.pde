

import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;
String str;

void setup() {
  Scanner file;
  try{
  file = new Scanner(new File("Desktop/VotoA/twoCities.txt"));
  while (file.hasNextLine()) {
    str += file.nextLine()+"\n";
  }
  StringParser sp = new StringParser(str);
  println("Words: " + sp.countWords());
  println("Vowels: " + sp.countVowels());
  println("Syllables: " + sp.countSyllables());
  println("Sentences: " + sp.countSentences());
  println("Flesch Reading Ease Score: " + sp.getEaseScore());
  println("Flesch Reading Ease Level: " + sp.getEaseLevel());
  } catch (Exception FileNotFoundException) {
    out.println("File not found");
  }
}

public class StringParser {
  public String string;
  public StringParser(String s) {
    string = s;
  }
  public int countWords() {
    String[] array = split(string, " ");
    //for(String s : array){
    //println(s);
    //}
    return array.length;
  }
  public int countVowels() {
    int number = 0;
    char[] array = string.toCharArray();
    for (char ch : array) {
      if (ch=='a' || ch=='A' || ch=='e' || ch=='E' || ch=='i' || ch=='I' || ch=='o' || ch=='O' || ch=='u' || ch=='U' || ch=='y') {
        number++;
      }
    }
    return number;
  }
  public int countSyllables() {
    int number = 0;
    int last = -2;
    boolean firstSyll = true;
    String[] stringArray = split(string, ("[\\,!\\s]+"));
    for (String str : stringArray) {
      char[] charArray = str.toCharArray();
      last = -2;
      firstSyll = true;
      for (int i = 0; i < charArray.length; i++) {
        if (charArray[i]=='a' || charArray[i]=='i' || charArray[i]=='o' || charArray[i]=='u' || charArray[i]=='y') {
          if (last != -2 && i - 1 != last) {
            number++;
            firstSyll = false;
            last = i;
          }
        }
        if (charArray[i]=='e' && i == charArray.length-1 && firstSyll == true) {
            number++;
            firstSyll = false;
            last = i;
          }
        if (charArray[i]=='A' || charArray[i]=='E' || charArray[i]=='I' || charArray[i]=='O' || charArray[i]=='U') {
          if (charArray[i+1]!='.') {
            number++;
            firstSyll = false;
            last = i;
          }
        }
        if (i == charArray.length-1 && firstSyll == true) {
          number++;
          last = i;
        }
      }
    }
    return number;
  }
  public int countSentences() {
    int number = 0;
    char[] array = string.toCharArray();
    for (int i = 0; i < array.length; i++) {
      if (array[i]=='?' || array[i]=='!') {
        number++;
      }
      if (array[i]=='.') {
        if (Character.isLowerCase(array[i-1]) == true) {
          number++;
        }
      }
      if (array[i]==';' || array[i]==':') {
        if (Character.isUpperCase(array[i+2]) == true && array[i+3]!='.') {
          number++;
        }
      }
    }
    return number;
  }
  public double getEaseScore() {
    return 206.835- 1.015*(countWords()/countSentences()) - 84.6*(countSyllables()/countWords());
  }
  public String getEaseLevel() {
    double num = getEaseScore();
    if (num < 0) {
        return "Very Difficult";
    } else if (num < 30) {
        return "College Graduate";
    } else if (num < 50) {
        return "College Student";
    } else if (num < 60) {
        return "10-12th Grade";
    } else if (num < 70) {
        return "8-9th Grade";
    } else if (num < 80) {
        return "7th Grade";
    } else if (num < 90) {
        return "6th Grade";
    } else if (num < 100) {
        return "5th Grade";
    } else {
        return "Less than 5th Grade";
    }
  }
}
