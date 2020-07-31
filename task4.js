	function number_to_text(num){
		var lang_d1 = {
			1:  "один",
			2:  "два",
			3:  "три",
			4:  "четыри",
			5:  "пять",
			6:  "шесть",
			7:  "семь",
			8:  "восемь",
			9:  "девять",
			10: "десять",
			11: "одинадцать",
			12: "двенадцать",
			13: "тринадцать",
			14: "четырнадцать",
			15: "пятнадцать",
			16: "шестнадцать",
			17: "семнадцать",
			18: "восемнадцать",
			19: "девятнадцать",
		};
		
		var lang_d2 = {
			2: "двадцать",
			3: "тридцать",
			4: "сорок",
			5: "пятьдесят",
			6: "шестьдесят",
			7: "семьдесят",
			8: "восемьдесят",
			9: "девяносто"
		};
		
		var lang_h = {
			1: "сто",
			2: "двести",
			3: "триста",
			4: "четыриста",
			5: "пятьсот",
			6: "шестьсот",
			7: "семьсот",
			8: "восемьсот",
			9: "девятьсот"
		};
		
		var lang_th = {
			1: "одна тысяча",
			2: "две тысячи",
			3: "три тысячи",
			4: "четыри тысячи",
			5: "тысяч"
		};

		var rezult = "";
		if(parseInt(num)){
			
			var thousands = Math.floor(num/1000);
			var num = num % 1000;
			if(thousands > 0){
				if(thousands == 1){
					rezult = rezult+lang_th[1];
				}
				else if(thousands >= 2 && thousands <= 4){
					rezult = rezult+lang_th[thousands]+' ';
				}
				else if(thousands > 4){
					rezult = rezult+lang_d1[thousands]+' '+lang_th[5]+' ';
				}
			}
			
			
			var hundreds = Math.floor(num/100);
			var num = num % 100;
			if(hundreds > 0){
				rezult = rezult+lang_h[hundreds]+' ';
			}
		
			
			var dec = Math.floor(num/10);
			var num = num % 10;
			if(dec > 0){
				if(dec > 1){
					rezult = rezult+lang_d2[dec]+' ';
				} else{
					num = num+10;
					rezult = rezult+lang_d1[num]+' ';
				}
			}
			
			
			if(num > 0 && dec != 1){
				rezult = rezult+lang_d1[num];
			}
		
		
			return rezult;
		}
	}