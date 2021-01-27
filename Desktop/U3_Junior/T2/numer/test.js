//TODO:Array

/*var cars = ["Saab", 
            "Volvo", 
            "BMW"];
console.log(cars)
console.log(cars[0])
console.log(cars[0][1])*/



/*var cars = [ 1, 
             2, 
             3];
console.log(cars)
console.log(cars[0])
console.log(cars[0][1])*/


/*var cars = new Array("Saab", "Volvo", "BMW");
console.log(cars)
console.log(cars[0])
console.log(cars[0][1])*/




/*------------------------------*/


//TODO:Object

/*var person = ["John", "Doe", [2 ,1 ,5] ];
console.log(person)
console.log(person[0][0])
console.log(person[2])
console.log(person[0][2])
console.log(person[2])
console.log(person[2][0])

var person1 = {firstName:"John", lastName:"Doe", age:46};
console.log(person1)
console.log(person1['firstName'])
console.log(person1.firstName)
console.log(person1['firstName'][0])
console.log(person1.firstName[0])*/




/*var person = {
    firstName: "John",
    lastName : "Doe",
    id       : 5566,
    fullName : function() {
      return this.firstName + " " + this.lastName;
    }
  };
  console.log(person)
  console.log(person['fullName'])
  console.log(person.fullName())*/

//TODO:Array of Object

/*var person2 = [ {firstName:"John", lastName:"Doe", age:46},
                {firstName:"Mama", lastName:"Eddy", age:13},
                {firstName:"Peera", lastName:"Go", age:16}];
console.log(person2);
console.log(person2[0]['firstName']);
console.log(person2[0].firstName);
console.log(person2[0]['firstName'][1]);
console.log(person2[0].firstName[0]);*/

//TODO:array in Object 

/*var person3 = {firstName:"John", car: [2,4] }
console.log(person3);
console.log(person3['car']);
console.log(person3.car);
console.log(person3.car[0]);*/

//TODO:object in Object 

/*var person4 = {firstName:"John", car: {type: 'Bus', color: 'Red'} }
console.log(person4);
console.log(person4['car']);
console.log(person4.car);
console.log(person4['car']['type']);
console.log(person4.car.type);
console.log(person4['car']['type'][1]);
console.log(person4.car.type[2]);*/

//TODO:array of object in Object 

/*var person5 =   [{firstName:"John", car: {type: 'Bus', color: 'Red'} },
                 {firstName:"M", car: {type: 'Mini', color: 'Blue'} }]

console.log(person5);
console.log(person5[0]);
console.log(person5[0]['car']);
console.log(person5[0].car);
console.log(person5[1]['car']['type']);
console.log(person5[1].car.type);
console.log(person5[1]['car']['type'][1]);
console.log(person5[1].car.type[2]);
*/


                

//TODO:JavaScript Array Methods

/*var fruits = ["Banana", "Orange", "Apple", "Mango"];
console.log(fruits.length);
console.log(fruits.toString());
console.log(fruits.join("-"));*/


//TODO: POP 

/*var fruits = ["Banana", "Orange", "Apple", "Mango"];
console.log(fruits);
console.log('POP');
var result = fruits.pop();
console.log(fruits);
console.log(fruits.length);
console.log('result = ', result);*/

//TODO: PUSH 

/*var fruits = ["Banana", "Orange", "Apple", "Mango"];
console.log('PUSH');
fruits.push('XXX');
console.log(fruits);
console.log(fruits.length);*/



//TODO:SHIFT
/*var fruits = ["Banana", "Orange", "Apple", "Mango"];
console.log('SHIFT');
var x = fruits.shift();
console.log(fruits);
console.log(fruits.length);
console.log('x = ', x);*/

//TODO: UNSHIFT
/*var fruits = ["Banana", "Orange", "Apple", "Mango"];
console.log('UNSHIFT');
fruits.unshift('Strawberry')
console.log(fruits);
console.log(fruits.length);*/


//TODO: LOOP
/*var fruits = ["Banana", "Orange", "Apple", "Mango"];
fruits.forEach(function(item, index, array) {
    console.log(item, index);
})*/

// // TODO:INDEX
/*console.log(fruits.indexOf('Banana'));*/

// TODO:REMOVE
/*var vegetables = ['Cabbage', 'Turnip', 'Radish', 'Carrot'];
console.log(vegetables);
vegetables.splice(1, 2);
console.log(vegetables);*/

//TODO: COPY
/*var vegetables = ['Cabbage', 'Turnip', 'Radish', 'Carrot'];
var copy = vegetables.slice();
console.log(copy);*/

//TODO:MAP 
/*var array1 = [1, 4, 9, 16];
const map1 = array1.map(x => x * 2);
console.log(array1);
console.log(map1);*/


/*var array1 = [1, 4, 9, 16];
var y = function(x){
    return x*2;
}
//const map1 = array1.map(function(x) {return x * 2});
const map1 = array1.map(y);

console.log(array1);
console.log(map1);*/


/*var r = function(fn){
     return fn(5);
}
var y = function(t){
    return t+1;
}
console.log(r(y)); 

var r = function(fn => t+1){
    
}

console.log(r(y));*/
