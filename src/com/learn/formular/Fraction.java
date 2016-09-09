package com.learn.formular;

/* 
* 分数相加，两个分数分别是1/5和7/20，它们相加后得11/20。方法是先求出两个分数分母的最小公倍数，通分后，再求两个分子的和，  
* 最后约简结果分数的分子和分母（如果两个分数相加的结果是4/8，则必须将其化简成最简分数的形式1/2），  
* 即用分子分母的最大公约数分别除分子和分母。请用四个对话框顺序输入分子和分母，在控制台上输出其运算结果；  
* 知识扩展：先求gcd(最大公约数)再求lcm(最小公倍数)。 最小公倍数等于两数之积除以最大公约数。  
 *例：求12和8的最小公倍数。  
　           12和8的最大公约数为4，  
　           12×8÷4=24 ，  
　          所以两数的最小公倍数是24。
*/    
    
public class Fraction {    
	static int numera = 0;
	static int deomina = 0;
	
    public static void main(String[] args) {    
        int a1 = 9;
        int a2 = 10;
        int b1 = 3;
        int b2 = 11;
        new Fraction().fracAdd(a1,a2,b1,b2);//结果为：11/20     
        System.out.println("分数加法运算："+numera+"/"+deomina);
        new Fraction().fracSub(a1,a2,b1,b2);//分数相减     
        System.out.println("分数减法运算："+numera+"/"+deomina);
        new Fraction().fracMul(a1,a2,b1,b2);//分数相乘     
        System.out.println("分数乘法运算："+numera+"/"+deomina);
        new Fraction().fractDiv(a1,a2,b1,b2);//分数相除     
        System.out.println("分数除法运算："+numera+"/"+deomina);
    }
    
    //定义分数相加函数
    public void fracAdd(int first_numerator, int first_denominator, int second_numrator, int second_denominator){    
        int lcm, gcd;
        lcm = lcm(first_denominator,second_denominator);//需要调用求最小公倍数的函数求的最小公倍数
        numera = (lcm/first_denominator)*first_numerator+(lcm/second_denominator)* second_numrator;//  未化简的分子和
        deomina = lcm;             //未化简的分母
        gcd = gcd(numera,deomina); //需要调用求最大公约数的函数
        numera = numera/gcd;       //化简后的分子
        deomina = deomina/gcd;     //化简后的分母
    }

    //定义分数相减函数
    public void fracSub(int first_numerator,int first_denominator,int second_numrator,int second_denominator){  
        int lcm, gcd;
        lcm = lcm(first_denominator,second_denominator);//需要调用求最小公倍数的函数求的最小公倍数     
        numera = (lcm/first_denominator)*first_numerator-(lcm/second_denominator)* second_numrator;//  未化简的分子差
        deomina = lcm;             //未化简的分母
        gcd = gcd(numera,deomina); //需要调用求最大公约数的函数
        numera = numera/gcd;       //化简后的分子     
        deomina = deomina/gcd;     //化简后的分母     
    }
    
    //定义分数相乘函数
    public void fracMul(int first_numerator,int first_denominator,int second_numrator,int second_denominator){  
        int z, m, gcd;
        z = first_numerator * second_numrator;  
        m = first_denominator * second_denominator;  
        gcd = gcd(z,m);  
        numera = z / gcd;  
        deomina = m / gcd;  
    }
    
    //定义分数相除函数
    public void fractDiv(int first_numerator,int first_denominator,int second_numrator,int second_denominator){  
        int z, a, m, gcd;
        a = second_denominator;  
        second_denominator = second_numrator;  
        second_numrator = a;  
        z = first_numerator * second_numrator;  
        m = first_denominator * second_denominator;  
        gcd = gcd(z,m);  
        numera = z / gcd;  
        deomina = m / gcd;  
    }
    
    //求最大公约数
    public static int gcd(int m,int n){    
        int i = 2;       //定义整型变量i，为循环变量
        int g, min;    
        min = m>n ? n : m;
        g = 1;           //最大公约数初始值为1
        while(i <= min)  //判断条件，一直循环到两个数中较小的那个结束
        {    
            while (m % i == 0 && n % i == 0)    
            {    
                m = m / i;
                n = n /i;
                g = g * i;
            }    
            i++;    
        }    
        return g;    
    }
    
    //求最小公倍数函数
    public static int lcm(int m,int n){    
        int g, l;    
        g = gcd(m,n);       //调用求最大公约数函数
        l = m * n / g;    
        return l;    
    }     
}   
