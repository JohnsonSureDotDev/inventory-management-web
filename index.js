
const parentHtml=document.getElementsByClassName("appendToMe")[0];
const blurBtn=document.getElementById("blurBtn");
let searchInputField=document.getElementById("searchBar")
const addItems=document.getElementById("addItems")
const searchInputBtn=document.getElementById("searchActionBtn")
const cancel=document.getElementById("cancel")
let formDatabase= [];
const xmlhttp = new XMLHttpRequest();
xmlhttp.onload = function() {
 // 
// console.log(formDatabase[1]) 
let data1=JSON.parse(this.responseText)
/* formDatabase [11]= data1 */
//console.log(formDatabase)

for(let i=0;i<data1.length;i++){
  let arr=[data1[i].box_no,data1[i].item_name.toUpperCase(),data1[i].model_no,data1[i].selling_price,data1[i].in_stock,data1[i].sold,data1[i].buying_price,data1[i].profit,data1[i].day_bought,data1[i].day_sold]
  formDatabase.push(arr)
  /* console.log(formDatabase.length) */
}}
xmlhttp.open("GET", "serverSendAndRecieveData.php");
xmlhttp.send();
  function blurMe(color){
    const toBlur = document.querySelectorAll(".blur");
    toBlur.forEach(e=>{
          e.style.backgroundColor=color
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
    const date=new Date()
  let parentElm=elementCreated.parentElement
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
       }) ()).toString()
      parentElm.children[9].textContent=`${date.getDate()}/${date.getMonth()}/${date.getFullYear()}`
  }
  sellValid()
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
    
  addItems.addEventListener("click",()=>{
    
     document.getElementById("obstractionLayer").style.display="block"
     document.getElementById("intermediateMain").style.display="flex"
     document.getElementById("addItemsinterface").style.display="flex"
  })
  cancel.addEventListener("click",()=>{ 
     document.getElementById("obstractionLayer").style.display="none"
     document.getElementById("intermediateMain").style.display="none"
  })
  blurBtn.addEventListener("click",()=>{
    blurMe("white")
  })
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
  avoid use of eval for security reasonsn
  */
  
 