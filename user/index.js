let sellIsValid=0;
const parentHtml=document.getElementsByClassName("appendToMe")[0];
const blurBtn=document.getElementById("blurBtn");
const searchInputField=document.getElementById("searchBar")
const sell=document.getElementById("sell")
const searchInputBtn=document.getElementById("searchActionBtn")
const cancel=document.getElementById("cancel")
const customSp=document.getElementById("customSellingPrice")
const cspActive=document.getElementById("cspActive")
const formDatabase= [];
//fetching from db
const xmlhttp = new XMLHttpRequest();
xmlhttp.onload = function() { 
let data1=JSON.parse(this.responseText)
for(let i=0;i<data1.length;i++){
  let arr=[
    data1[i].box_no,
    data1[i].item_name.toUpperCase(),
    data1[i].model_no,
    data1[i].selling_price,
    data1[i].in_stock,
    data1[i].sold,
    data1[i].buying_price,
    data1[i].profit,
    data1[i].day_bought,
    data1[i].day_sold]
  formDatabase.push(arr)
}}
xmlhttp.open("GET", "serverSendAndRecieveData.php");
xmlhttp.send();



  setTimeout(() => {
    function blurMe(color){
      const toBlur = document.querySelectorAll(".blur");
      toBlur.forEach(e=>{
          /*   if(e.parentElement.style.backgroundColor==="red"){
              e.style.backgroundColor="red"
            }else{
              e.style.backgroundColor=color
              /* rgb161,161,161 
            } */
           
             if(e.style.color==="transparent"){
              e.style.color="#000"
              e.setAttribute("title","Click BLUR button to hide content")
            }else{
              e.style.color="transparent"
              e.setAttribute("title","blured click BLUR button to see content")
            };              
             !(e.style.color==="transparent")?e.style.backgroundColor="white":e.style.backgroundColor=color;              
             !(e.style.color==="transparent")&&(e.parentElement.style.backgroundColor==="red")
             ?e.style.backgroundColor="red"
             :e.style.backgroundColor=color;              
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
                    let ret= createElm("td",tr,"class","inStock",e)
                    if(Number(e)<=0){
                    ret.parentElement.style.backgroundColor="red"
                    }
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
                    document.getElementById("obstractionLayer").textContent=""
        
                   const date=new Date()

                /* redundancy */
                   let parentElm=elementCreated.parentElement
                   document.getElementById("obstractionLayer").style.display="block"
                   document.getElementById("intermediateMain").style.display="flex"
                   document.getElementById("itemSold").textContent=`  ${parentElm.children[2].textContent.split(",").join("/")} (${parentElm.children[1].textContent})  `
                   document.getElementById("itemSellingPrice").textContent=`${ parentElm.style.backgroundColor==="red"?"cant sell: item out of stock":parentElm.children[3].textContent}`
                /* redundancy */
    function sellValid(){
      let w=parentElm.children[6]
      let x=parentElm.children[7]
      let y=parentElm.children[5]
      let z=parentElm.children[4]
        x.textContent=(Number(parentElm.children[3].textContent)-Number(w.textContent)).toString()
        y.textContent=Number(z.textContent)<=0?(Number(y.textContent)).toString():(Number(y.textContent)+1).toString()
        z.textContent=((()=>{
          if((Number(z.textContent)-1)<=0){
    parentElm.style.backgroundColor="red"
            return 0
          }else{
            return Number(z.textContent)-1
          }
         }) ()).toString();
         function todb(serverName){
                const xhttp = new XMLHttpRequest();
          xhttp.open("POST", serverName);
          xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
          xhttp.onload = function() {
            console.log(this.responseText);
          }
    if(serverName==="serverPOST.php"){
         xhttp.send(`query=UPDATE records
SET selling_price=
${Number(parentElm.children[3].textContent)} ,
 day_sold="${date.getFullYear()}-${date.getMonth()}-${date.getDate()}" ,
 in_stock=${Number(parentElm.children[4].textContent)},
 sold=${Number(parentElm.children[5].textContent)},
 profit=${Number(parentElm.children[7].textContent)}
WHERE box_no=${Number(parentElm.children[0].textContent)};`);
    }else if(serverName==="serverPOST2.php"&&!(Number(parentElm.children[0].textContent)===54)){

      xhttp.send(`query=
INSERT INTO sales_records (	box_no,item_name,model_no,selling_price,in_stock,sold,buying_price,profit,day_bought,day_sold	)
VALUES (
  ${Number(parentElm.children[0].textContent)},
 "${parentElm.children[1].textContent}",
 "${parentElm.children[2].textContent}",
  ${Number(parentElm.children[3].textContent)} ,
  ${Number(parentElm.children[4].textContent)} ,
  ${Number(parentElm.children[5].textContent)} ,
  ${Number(parentElm.children[6].textContent)} ,
  ${Number(parentElm.children[7].textContent)} ,
" ${parentElm.children[8].textContent}",
" ${parentElm.children[9].textContent}"
);`);
    }

         }

         todb("serverPOST.php")
         todb("serverPOST2.php")

          
    }
    sell.addEventListener("click",()=>{
      parentElm.children[3].textContent=document.getElementById("itemSellingPrice").textContent
      sellValid();
        customSp.style.display="none"
         sell.textContent="sell inactive"
         sell.disabled=true
            document.getElementById("intermediateMain").style.display="none"
               document.getElementById("obstractionLayer").textContent="item sold Successfully!"
            setTimeout(() => {
                 document.getElementById("obstractionLayer").style.display="none"
              location.reload(); 
            }, 1000);
         
    })
    if(parentElm.style.backgroundColor==="red"){
      cspActive.disabled=true
      sell.disabled=true
    sell.textContent="sell inactive"
    }else{
        sell.disabled=false
    sell.textContent="sell active"
      cspActive.disabled=false
  
    }
  
    cspActive.addEventListener("click",()=>{
      if(cspActive.value==="no"){
        document.getElementById("itemSellingPrice").textContent =parentElm.children[3].textContent
       sell.disabled=false
        sell.textContent="sell active"
        customSp.style.display="none"
         cspActive.value="yes"
      }else{
       cspActive.value= "no"
        customSp.style.display="block"
 sell.disabled=true
    sell.textContent="sell inactive"

      }
      })
  
    customSp.addEventListener("keyup",()=>{
      let checker=customSp.value.trim()
     if( isNaN(checker)||checker>Number(parentElm.children[3].textContent)||checker===""||Number(checker)===0||parentElm.style.backgroundColor==="red"){
     
      isNaN(checker)?checker="price is Not a number":""
       checker===""?checker="price is empty":""
      checker>Number(parentElm.children[3].textContent)?checker=`price is more than actual selling price ${checker} is more than ${parentElm.children[3].textContent}`:""
      Number(checker)===0?checker="invalid price":""
      parentElm.style.backgroundColor==="red"?checker="(can't sell:item out of stock !)":""
    sell.disabled=true
    sell.textContent="sell inactive"
    }else{
      sell.disabled=false
        sell.textContent="sell active"
  
    }
      document.getElementById("itemSellingPrice").textContent=`${checker}`
    })
   
  
    })
                      break;
              
                  default:
                      break;
              }
             }
             parentHtml.appendChild(tr)
    
        }
    
            formDatabase.map((x)=>createElmAndContent(...x))
       
    
            searchInputField.addEventListener("click",()=>{
              searchInputField.addEventListener("keyup",()=>{
                while (parentHtml.hasChildNodes()){
                  parentHtml.removeChild(parentHtml.firstChild);
                }
               
     formDatabase.filter((x)=>x[2].toUpperCase().search(searchInputField.value.toUpperCase())>-1).map((x)=>createElmAndContent(...x))
                })    
              
            })   
      
  
    cancel.addEventListener("click",()=>{ 
       document.getElementById("obstractionLayer").style.display="none"
       document.getElementById("intermediateMain").style.display="none"
        document.getElementById("itemSellingPrice").textContent=""
        location.reload(); 
    })
    blurBtn.addEventListener("click",()=>{
      blurMe("rgb(211,211,211)")
    })
    document.addEventListener("keypress",()=>{
      searchInputField.focus()
    })
    blurMe(/*"  rgb(161,161,161)" */"rgb(211,211,211)")
  }, 1000);

  /* 
  BEST PRACTICES
  .avoid global variables instead use options like closures
  .always declare local variables
  .declarations on top of each script or function
  .initialize variables
  .declare Objects with const
  .declare Arrays with const
  .avoid using New keyword
  .beware of javasripts automatic type conversion
  use=== for equality comparison
  use default parameters where function arguments lack or appply currying 
  .end switches with defaults
  avoid use of eval for security reasons
  */
 