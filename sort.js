

// function bubbleSort(arr){
// // iterative
//   var array_length = arr.length,
//     swapped,
//     swap;

//   while (swapped === false) {
//     swapped = false;
//     for(var i=0 ; i < arr.length; i++) {
//       if (arr[i] > arr[i+1]) {
//         swap = arr[i];
//         arr[i] = arr[i+1];
//         arr[i+1] = swap;
//         swapped = true;
//       }
//     }
//   }

//   return arr;
// }

function bubbleSort(arr){
    var temp;
    for (var i=0; i < arr.length-1; i++){
        for (var j=1; j < arr.length-i; j++){
            if (arr[j] < arr[j-1]){
                temp = arr[j-1]
                arr[j-1] = arr[j]
                arr[j] = temp
            }
        }
    }

    return arr;
}


// do not touch this
module.exports = bubbleSort

