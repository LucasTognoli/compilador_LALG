 /* Grupo 4 - Trabalho 1 */

%option nounput yylineno
%option caseless

%%

 /* variable name error*/
[0-9]+[_a-zA-Z]+[_a-zA-Z0-9]*    return 27;

 /* reserved words */
"absolute"		return 1;
"and"			return 1;
"array"			return 1;
"asm"			return 1;
"begin"			return 1;
"case"			return 1;
"const"			return 1;
"constructor"		return 1;
"destructor"		return 1;
"div"			return 1;
"do"			return 1;
"downto"		return 1;
"else"			return 1;
"end"			return 1;
"file"			return 1;
"for"			return 1;
"function"		return 1;
"goto"			return 1;
"if"			return 1;
"implementation"	return 1;
"in"			return 1;
"mod"			return 1;
"nil"			return 1;
"not"			return 1;
"object"		return 1;
"of"			return 1;
"operator"		return 1;
"or"			return 1;
"inherited"		return 1;
"inline"		return 1;
"interface"		return 1;
"label"			return 1;
"packed"		return 1;
"procedure"		return 1;
"program"		return 1;
"read"			return 1;
"record"		return 1;
"reintroduce"		return 1;
"repeat"		return 1;
"self"			return 1;
"set"			return 1;
"shl"			return 1;
"shr"			return 1;
"string"		return 1;
"then"			return 1;
"to"			return 1;
"type"			return 1;
"unit"			return 1;
"until"			return 1;
"uses"			return 1;
"var"			return 1;
"while"			return 1;
"with"			return 1;
"xor"			return 1;


 /* comments */
"{"[^}]*"}"		return 2;
(\(\*)[^(\*\))]*(\*\))	return 2;
"//"[^\n]*		return 2;



 /* types */
"integer"		return 3;
"character"		return 3;
"real"			return 3;
"boolean"		return 3;
"enumerated"		return 3;
"subrange"		return 3;



 /* identifiers */
[a-zA-Z][_a-zA-Z0-9]*	return 4;


 /* out of range */
([0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]+|214748364[8-9]|21474836[5-9][0-9]|2147483[7-9][0-9][0-9]|214748[4-9][0-9][0-9][0-9]|21474[9][0-9][0-9][0-9][0-9]|2147[5-9][0-9][0-9][0-9][0-9][0-9]|214[89][0-9][0-9][0-9][0-9][0-9][0-9]|21[5-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|2[2-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|[3-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|-([0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]+|2147483649|21474836[5-9][0-9]|2147483[7-9][0-9][0-9]|214748[4-9][0-9][0-9][0-9]|21474[9][0-9][0-9][0-9][0-9]|2147[5-9][0-9][0-9][0-9][0-9][0-9]|214[89][0-9][0-9][0-9][0-9][0-9][0-9]|21[5-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|2[2-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]|[3-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]))	return 7;

 /* short int */
(12[0-7]|1[01][0-9]|[1-9]?[0-9]|-(12[0-8]|1[01][0-9]|[1-9]?[0-9]))	return 5; 
 
 /* small int */
(3276[0-7]|327[0-5]?[0-9]|32[0-6]?[0-9]?[0-9]|3[01]?[0-9]?[0-9]?[0-9]|[0-2][0-9]?[0-9]?[0-9]?[0-9]|-(3276[0-8]|327[0-5]?[0-9]|32[0-6]?[0-9]?[0-9]|3[01]?[0-9]?[0-9]?[0-9]|[0-2][0-9]?[0-9]?[0-9]?[0-9]))	return 28;

 /* long int */
(214748364[0-7]|21474836[0-3]?[0-9]|2147483[0-5]?[0-9]?[0-9]|214748[0-2]?[0-9]?[0-9]?[0-9]|21474[0-7]?[0-9]?[0-9]?[0-9]?[0-9]|2147[0-3]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|214[0-6]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|21[0-3]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|2[0]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|[01]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|-(214748364[0-8]|21474836[0-3]?[0-9]|2147483[0-5]?[0-9]?[0-9]|214748[0-2]?[0-9]?[0-9]?[0-9]|21474[0-7]?[0-9]?[0-9]?[0-9]?[0-9]|2147[0-3]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|214[0-6]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|21[0-3]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|2[0]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]|[01]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]))	return 6;


 /* symbols */

 /* compound symbols */
":="				return 8;
"<>"				return 9;

 /* single symbols*/
":"				return 10;
";"				return 11;
","				return 12;
"."				return 13;
"("				return 14;
")"				return 15;
"*"				return 16;
"/"				return 17;
'\'				return 18;
"+"				return 19;
"-"				return 20;
"%"				return 21;
"="				return 22;
"'"				return 23;
\"				return 24;
"<"				return 25;
">"				return 26;




 /* Error */
[+|-]*[_a-zA-Z0-9]*[@|&|{|}[|]|%|^]*[_a-zA-Z0-9]	return 27;
"(*"							return 27;
"*)"							return 27;
[@|&|{|}[|]|%|^]					return 27;
[_a-zA-Z0-9]						return 27;
"{"[^}]*						return 27;



[ \t\n]				;




 /* unexpected word (error) */
.			return 99;

%%



int yywrap(void)
{
	return 1;
}