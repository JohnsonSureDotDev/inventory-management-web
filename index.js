
const parentHtml=document.getElementsByClassName("appendToMe")[0];
let searchInputField=document.getElementById("searchBar")
const addItems=document.getElementById("addItems")
const searchInputBtn=document.getElementById("searchActionBtn")

const formDatabase=[
["q","w","c32","1300","5","4","700","-","m","o"],
["q","w","a12,a02","1100","5","4","750","-","m","o"],
["q","w","a04e,a03s,a03","1200","5","4","850","-","m","o"],
["q","w","c22","1300","5","4","1150","-","m","o"],
["q","w","a10s","1050","8","4","700","-","m","o"],
["q","w","a10","1100","5","4","750","-","m","o"],
["q","w","bd4","1100","5","4","850","-","m","o"],
["q","w","x657","1250","5","4","900","-","m","o"],
["q","w","x609","1050","5","4","750","-","m","o"],
["q","w","x559","1100","5","4","800","-","m","o"],
["q","w","bd2","1000","5","4","700","-","m","o"]
];
const phoneSpare={
    //item box no
//item name
//item model + compatibles
//selling price
//items in stock
//items sold
//item buying price
//item profit
//item day bought
//item day sold
/* 
        3-selling price 
        4- in stock
        5-sold
        6-
        7-profit
        8-
        9-day sold*/
}
let search=0;
function blurMe(){
  const toBlur = document.querySelectorAll(".blur");
  toBlur.forEach(e=>{
        e.style.backgroundColor="green"
        e.style.opacity="1"; 
    })

}
function createElm(elm,parent,classOrId,classNameOrIdName,nodeContent,hasTxt){
    const node=document.createTextNode(nodeContent?? "-" /* nodeContent */ )
              const el=document.createElement(elm)
              el.setAttribute(classOrId,classNameOrIdName)
             !hasTxt?el.appendChild(node):""
              parent.appendChild(el);
              return el
}
//populating the table with data and elements
function createElmAndContent(a,b,c,d,e,f,g,h,i,j){
        const tr=document.createElement("tr")
         tr.setAttribute("class","row");
         for(let z=0;z<11;z++){
          switch (z) {
              case 0:
                createElm("td",tr,"class","boxNo",a)
                  break;
          
              case 1:
                 createElm("td",tr,"class","item",b)
                    break;
          
              case 2:
                createElm("td",tr,"class","model",c)
             
               
                  break;
          
              case 3:
                createElm("td",tr,"class","sellingPrice blur",d)
                  break;
          
              case 4:
                createElm("td",tr,"class","inStock",e)
                  break;
          
              case 5:
                createElm("td",tr,"class","numberOfSold blur",f)
                  break;
          
              case 6:
                createElm("td",tr,"class","buyingPrice blur",g)
                  break;
          
              case 7:
                createElm("td",tr,"class","profit blur",h)
                  break;
          
              case 8:
                createElm("td",tr,"class","dayBought",i)
                  break;
          
              case 9:
                createElm("td",tr,"class","daysold",j)
                  break;
              case 10:  
               const elementCreated=createElm("td",tr,"class","sellBtn","sell")

elementCreated.addEventListener("click",()=>{
  const date=new Date()
let childElm=elementCreated.parentElement.children
function sellValid(){
    childElm[7].textContent=(Number(childElm[3].textContent)-Number(childElm[6].textContent)).toString()
    childElm[5].textContent=(Number(childElm[5].textContent)+1).toString()
    childElm[4].textContent=(Number(childElm[4].textContent)-1).toString()
    childElm[9].textContent=`${date.getDate()}/${date.getMonth()}/${date.getFullYear()}`
}
sellValid()
/*  profit=sp-Bp
 instock=instock-1
 sold=sold+1
 daysold=today */
  /* 
        3-selling price 
        4- in stock
        5-sold
        6-buying price
        7-profit
        8-
        9-day sold*/
})
                  break;
          
              default:
                  break;
          }
         }
         parentHtml.appendChild(tr)

    }

        formDatabase.map((x)=>createElmAndContent(...x))
        blurMe();

        searchInputField.addEventListener("click",()=>{
          searchInputField.addEventListener("keyup",()=>{
            while (parentHtml.hasChildNodes()){
              parentHtml.removeChild(parentHtml.firstChild);
            }
 formDatabase.filter((x)=>x[2].toUpperCase().search(searchInputField.value.toUpperCase())>-1).map((x)=>createElmAndContent(...x))
          blurMe();
            })    
          
        })   
  
addItems.addEventListener("click",()=>{
   
})