if(window.XMLHttpRequest){
    XMLHttpR = new XMLHttpRequest();
}else if(window.ActiveXObject){
    try{
        XMLHttpR = new ActiveXObject("Msxml2.XMLHTTP");
    }catch(e){
        try{
            XMLHttpR = new ActiveXObject("Microsoft.XMLHTTP");
        }catch(e){
        }
    }
}
