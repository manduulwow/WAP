"use strict";

function max(a, b) {
    return (a > b) ? a : b;
}

function maxOfThree(a, b, c) {
    let max = (a > b) ? a : b;
    return (max > c) ? max : c;
}

function isVowel(character) {
    let ar = ['a','e','i','o','u'];
    let result = ar.filter(vowel => vowel == character);
    return (result.length > 0) ? true : false;
}

function sum(arr) {
    let sum = arr.reduce((sum, num) => sum + num);
    return sum;
}

function multiply(arr) {
    let val = arr.reduce((sum, num) => sum * num);
    return val;
}

function reverse(str) {
    return str.split("").reverse().join("");
}

function findLongestWord(arr) {
    let str = arr.reduce((a, b) => (a.length > b.length) ? a : b );
    return str;
}

function filterLongWords(arr, i) {
    let longWords = arr.filter(word => word.length > i);
    return longWords;
}

function findSecondBiggest(arr) {
    let max = 0;
    let secondMax = 0;
    for(let i = 0; i < arr.length; i++) {
        if(max < arr[i]) {
            secondMax = max;
            max = arr[i];
        }
    }

    return secondMax;
}

function printFibo(n, a, b) {
    let sequence = [0, 1];
    
	for (let i = 2; i < n; i++) {
		sequence[i] = sequence[i-1]+ sequence[i-2];
    }

    for(let i = a; i <= b; i++) {
        console.log("10. function printFibo => " + sequence[i]);
    }
}

function printData() {
    
    console.log("11. Username => " + document.forms["myForm"]["username"].value);
    console.log("11. Password => " + document.forms["myForm"]["password"].value);
}

function printProduct() {
    alert("11. Product => " + document.forms["productForm"]["product"].value);
}

function myTimer() {
  let d = new Date();
  document.getElementById("time").innerHTML = d.getFullYear() + "-" + d.getMonth() + "-" + d.getDate() + " " + d.toLocaleTimeString();
}

setInterval(myTimer, 1000);
printFibo(6,0,1);
console.log("9. function findSecondBiggest => " + findSecondBiggest([1,2,3,4]));
console.log("7. function filterLongWords => " + filterLongWords(["1","22","22","333"],1));
console.log("6. function findLongestWord => " + findLongestWord(["1","22","333"]));
console.log("5. function reverse => " + reverse("Manduul"));
console.log("4. function multiply => " + multiply([1,2,3]));
console.log("4. function sum => " + sum([1,2,3,4]));
console.log("3. function isVowel => " + isVowel('e'));
console.log("2. function maxOfThree => " + maxOfThree(1,2,3));
console.log("1. function max => " + max(1,2));


