var a = 13;
var error=999;
var Xl=1.5;
var Xr=2.0;
var Xm=(Xl+Xr)/2.0;
var fXl=0;
var fXr=0;
var fXm=Math.pow(Xm,4);
if(fXm != a){
    while(error>0.000001){
        Xm = (Xl+Xr)/2.0;
        fXm = Math.pow(Xm,4);
        if(fXm>a){
            Xr=Xm;
            fXr=fXm;
         }
         else if(fXm<a){
            Xl=Xm;
            fXl=fXm;
         }
         error = Math.abs(fXm-a);
         //console.log(Xm.toFixed(6));
    }
    console.log((Xm.toString()).substring(0,8)) //change Float to String make number don't round up
    //console.log(Xm)
}
else{
    console.log(Xm);
}
//console.log(y);