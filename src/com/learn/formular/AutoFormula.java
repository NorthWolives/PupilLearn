package com.learn.formular;

import java.util.Random;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;


public class AutoFormula {
	public static String formular = new String();
	public static String result = new String();
	public static String mathTex = new String();
	int numerator;
	int denominator;
	String texString = new String();
	
	public static void main(String[] args) {
		/*
		 * 参数mode为符号模式，0是加减、1是乘除、2是加减乘除；
		 * 参数hasFraction为控制分数个数；
		 * 参数numOfCharacter为符号数量；
		 * 参数minOfNumber为式子中出现的最小数值；
		 * 参数maxOfNumber为式子中出现的最大数值；
		 */
		//new AutoFormula().generate(0, 0, 3, 0, 10);
		new AutoFormula().generate(2, 1, 6, 0, 20);
		for (int i=0; i<formular.length(); i++) {
			
		}
		formular = formular.replace("*", " \\times ");
		formular = formular.replace("/", " \\div ");
		System.out.println(formular);
		System.out.println(mathTex);
		System.out.println(result);
	}
	
	
	public void generate(int mode, int hasFraction, int numOfCharacter, int minOfNumber, int maxOfNumber) {
		int numOfNumber = numOfCharacter + 1;
		String[] character = new String[numOfCharacter];
		String[] number = new String[numOfNumber];
		String[] tex = new String[numOfNumber];
		StringBuilder stringBuilder = new StringBuilder();
		StringBuilder stringBuilderTex = new StringBuilder();
		
		//初始化符号数组
		for (int i=0; i<character.length; i++) {
			character[i] = generateCharacter(mode);
		}
		//初始化数字数组、Tex数组
		for (int i=0; i<number.length; i++) {
			number[i] = generateNumber(hasFraction, minOfNumber, maxOfNumber);
			tex[i] = texString;
		}
		//链接符号和数字
		stringBuilder.append(number[0]);
		stringBuilderTex.append(tex[0]);
		for (int i=0; i<character.length; i++) {
			stringBuilder.append(character[i] + number[i+1]);
			stringBuilderTex.append(character[i] + tex[i+1]);
		}
		formular = stringBuilder.toString();
		mathTex = stringBuilderTex.toString();
		
		if (hasFraction == 0) {
			result = calIntResult();
		} else {
			result = calFractionResult(number, character);
		}
	}
	
	
	//3种随机生成模式，随机生成加减、乘除、加减乘除符号
	public String generateCharacter(int mode) {
		Random random = new java.util.Random();
		int i;
		switch (mode) {
		case 0:
			//+ -
			i = random.nextInt(2);
			return (i==0) ? "+" : "-";
		case 1:
			//* /
			i = random.nextInt(2);
			return (i==0) ? "*" : "/";
		case 2:
			//+ - * /
			i = random.nextInt(4);
			return (i==0) ? "+" : (i==1) ? "-" : (i==2) ? "*" : "/";
		}
		return null;
	}
	
	
	//2种随机生成模式，随机生成整数、分数
	public String generateNumber(int mode, int min, int max) {
		Random random = new java.util.Random();
		switch (mode) {
		case 0:
			//随机生成整数
			int num = min + random.nextInt(max);
			while (num == 0) { //整数为0太简单
				num = min + random.nextInt(max);
			}
			return String.valueOf(num);
		case 1:
			//随机生成分数
			int numerator;
			int denominator;
			do { //分子为0太简单,分母不能为0或1,分子分母不能相等
				numerator = min + random.nextInt(max);
				denominator = min + random.nextInt(max);
			} while (numerator == 0 || denominator == 0 || denominator == 1 || denominator == numerator);
			texString = "\\frac{"+String.valueOf(numerator)+"}{"+String.valueOf(denominator)+"}";
			return String.valueOf(numerator) + "/" + String.valueOf(denominator);
		}
		return null;
	}

	
	//整型表达式的正确计算结果
	public String calIntResult() {
		ScriptEngine engine = new ScriptEngineManager().getEngineByName("JavaScript");
		try {
			Object object = engine.eval(formular);
            return object.toString();
        } catch (ScriptException e) {
            e.printStackTrace();
        }
		return null;
	}
	
	
	//分数型表达式的正确计算结果
	public String calFractionResult(String[] number, String[] character) {
		int first_numerator;
		int first_denominator;
		int second_numrator;
		int second_denominator;
		splitFraction(number[0]);
		first_numerator = numerator;
		first_denominator = denominator;
		for (int i=0; i<character.length; i++) {
			splitFraction(number[i+1]);
			second_numrator = numerator;
			second_denominator = denominator;
			Fraction fraction = new Fraction();
			switch (character[i]) {
			case "+":
				fraction.fracAdd(first_numerator, first_denominator, second_numrator, second_denominator);
				first_numerator = Fraction.numera;
				first_denominator = Fraction.deomina;
				break;
			case "-":
				new Fraction().fracSub(first_numerator, first_denominator, second_numrator, second_denominator);
				first_numerator = Fraction.numera;
				first_denominator = Fraction.deomina;
				break;
			case "*":
				new Fraction().fracMul(first_numerator, first_denominator, second_numrator, second_denominator);
				first_numerator = Fraction.numera;
				first_denominator = Fraction.deomina;
				break;
			case "/":
				new Fraction().fractDiv(first_numerator, first_denominator, second_numrator, second_denominator);
				first_numerator = Fraction.numera;
				first_denominator = Fraction.deomina;
				break;
			}
		}
		
		if (first_numerator == 0) {
			return "0";
		} else if (first_numerator == first_denominator) {
			return "1";
		} else {
			return first_numerator + "/" + first_denominator;
			//return "\\frac{"+first_numerator+"}{"+first_denominator+"}";
		}
	}
	
	
	//将分数拆分开
	public void splitFraction(String fraction) {
		if (fraction.contains("/")) {
			String[] tmpNumber = fraction.split("/");
			numerator = Integer.parseInt(tmpNumber[0]);
			denominator = Integer.parseInt(tmpNumber[1]);
		} else { //整数就直接分子分母相同
			numerator = Integer.parseInt(fraction);
			denominator = numerator;
		}
	}

}
