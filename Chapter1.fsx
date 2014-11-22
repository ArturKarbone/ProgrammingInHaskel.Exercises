let double x = 
    x + x

double 10;
double (double 10);;
//val double : x:int -> int


let add x y = 
    x + y

add 10 20

List.sum [1..10]

let first list = 
    match list with
    | [] -> None
    | first::others -> Some(first)

first [5..10]
first []

//quick sort

//1

let lessThan(list,value) = 
    list |> List.filter (fun x -> x < value)
    
let greaterThan(list, value) = 
    list |> List.filter (fun x -> x >= value)    
  
let rec quickSort list =
    match list with
       | [] -> []             
       | firstElem::otherElements -> List.concat [lessThan(otherElements,firstElem) |> quickSort; [firstElem]; greaterThan(otherElements,firstElem) |>quickSort]
 
quickSort [10;9;15;3;-1]

//2

let rec quickSort2 list =
    match list with
       | [] -> []             
       | firstElem::otherElements -> 
       
           let lessThan(xs,v) = 
               xs |> List.filter (fun x -> x < v)
    
           let moreThan(xs,v) = 
                xs |> List.filter (fun x -> x >= v) 
            
           List.concat [lessThan(otherElements,firstElem) |> quickSort2; [firstElem]; moreThan(otherElements,firstElem)|>quickSort2]
 
quickSort2 [10;9;15;3;-1]



//3

let rec quickSort3 list =
    match list with
       | [] -> []             
       | firstElem::otherElements -> 
       
       let lessThan(otherElements) = 
           otherElements |> List.filter (fun x -> x < firstElem)
    
       let moreThan(otherElements) = 
            otherElements |> List.filter (fun x -> x >= firstElem) 
            
       List.concat [lessThan(otherElements) |> quickSort2; [firstElem]; moreThan(otherElements)|>quickSort2]
 
quickSort3 [10;9;15;3;-1]

//4
let rec quickSort4 list =
    match list with
       | [] -> []             
       | firstElem::otherElements -> 
       
       let lessThan = 
           otherElements |> List.filter (fun x -> x < firstElem) |> quickSort4
    
       let moreThan = 
            otherElements |> List.filter (fun x -> x >= firstElem) |> quickSort4
            
       List.concat [lessThan; [firstElem]; moreThan]
 
quickSort4 [10;9;15;3;-1]



//5
let rec quickSort5 = function   
       | [] -> []             
       | firstElem::otherElements -> 
              
           let lessThan = 
               otherElements |> List.filter (fun x -> x < firstElem) |> quickSort5
    
           let moreThan = 
                otherElements |> List.filter (fun x -> x >= firstElem) |> quickSort5
            
           List.concat [lessThan; [firstElem]; moreThan]
 
quickSort5 [10;9;15;3;-1]


let rec printList = function    
    | [] -> printf ""
    | head::[] -> printf "%A last " head; 
    | head::tail -> printf "%A, " head; printList tail   


printList [1;2;3]