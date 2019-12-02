var functionnames = [
    tindexof,
    tslice,
    treplace,
    OtherFuns,
    ArrayFunctions
]
function RunFunctions(){
    functionnames.forEach(element => {
        //console.log(element)
        element();
    });
}

function tindexof() { // this function is used to test the index of function of string
    var str = "The full name of China is People;s Republic of China.";
    var pos = str.indexOf("China");
    console.log(pos)
}

function tslice() // this function is to test slice and substr function
{
    var str = "Applce, Banana, Mango";
    console.log(str.slice(1,10));
    console.log("=== first 1 and second 2")
    console.log(str.slice(1,2))
    console.log("==== test the substr function ======")
    console.log(str.substr(1,2))
}

function treplace(){
    // this function is used to test the replace function
    // the function will replace the first word by default.
    // the regular exprssion can also used in VIM
    var str = "Please visit Miscrosoft and Miscrosoft!";
    var n = str.replace("Miscrosoft", "WWW3C");
    console.log("=== this replace testing is listed ==== ");
    console.log(n);
    console.log("==== replace the whole matching by using /g");
    n = str.replace(/Miscrosoft/g, "WWW3C");
    console.log(n);
}

function OtherFuns(){
    // this function will test the other common used function
    console.log("==== test the touppercase function =====");
    var str = "This IS a Greater China";
    console.log("Original string is " + str);
    console.log("=== To Upper case ====");
    console.log(str.toUpperCase());

    console.log("=== To Lower case ====");
    console.log(str.toLowerCase());
    console.log("=== to test the string concat") ;
    var test1 = "Hell0";
    var test2 = "Word";
    console.log(test1.concat(test2));
}

function ArrayFunctions(){
    // this function is used to study the function of array
    console.log("== to string function ==");
    var fruits = ["Banana", "Oranage", "Oranage", "Apple"];
    console.log(fruits.toString());
    // test the shift function of array
    console.log("== Test the shift function ==");
    console.log(fruits.shift());
    // test the splice function of array
    console.log("== test the splice function == ");
    fruits.splice(2,1);
    console.log(fruits.toString());
    console.log(fruits.slice(1,3).toString());
    console.log("== we want to test the for each function ==");
    fruits[fruits.length] = "JJJ";
    fruits[fruits.length] = "dfdfdf";
    fruits[fruits.length] = "dfdggg";
    fruits.forEach(myfunction);
    var number1 = [45, 4, 9, 16, 25];
    var number2 = number1.map(mapFunction);
    console.log(number2.toString());
    console.log("== test the filter function ==");
    var filterA = number1.filter(filterFunction);
    console.log(filterA.toString());
    console.log("=== test the reduce function ===");
    var sum = number1.reduce(reduceFunction);
    console.log("The reduce function result is" + sum);
}

function myfunction(value, index, array){
    // this funcion is used to test the array
    console.log("the index is " + index + " and the value is " + value);
}

function mapFunction(value, index, array){
    // this is the map function
    console.log(value**2);
    return value**2;
}

function filterFunction(value, index, array){
    // this function is used in filter function
    return value > 16;
}
function reduceFunction(total, value, index, array){
    // this function is the reduce function
    console.log(total);
    return total + value;
}