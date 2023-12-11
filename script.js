function highAdd(idElemento){

    var div = document.getElementById(idElemento);
    
    var adds = div.querySelectorAll('.add-a, .add-b, .add-i, .add-mri');

    for(var i = 0; i<adds.length; i++){
       
        if(getComputedStyle(adds[i]).display == 'none') {
            adds[i].style.display = 'inline';
        }else{
            adds[i].style.display = 'none';
        }

        }   
    }


/*funzione per evidenziare le aggiunte*/

function highAdd(idElemento){

    var div = document.getElementById(idElemento);
    
    var adds = div.querySelectorAll('.add-a, .add-b, .add-i, .add-mri');

    for(var i = 0; i<adds.length; i++){
       
        if(getComputedStyle(adds[i]).display == 'none') {
            adds[i].style.display = 'inline';
        }else{
            adds[i].style.display = 'none';
        }

        }   
    }

/* funzione per evidenziare le correzioni */

function highCorr(idElemento, btnId) {

    var div = document.getElementById(idElemento);
    var sic = div.querySelectorAll('.sic');
    var corr = div.querySelectorAll('.corr');
    var abbr = div.querySelectorAll('.abbr');
    var exp = div.querySelectorAll('.expan');

    for (var i = 0; i < sic.length; i++) {
        if (getComputedStyle(sic[i]).display != 'none') {
            sic[i].style.display = 'none';
            corr[i].style.display = 'inline';
        }else{
            sic[i].style.display = 'inline';
            corr[i].style.display = 'none'
        }
    }

    for (var i = 0; i < abbr.length; i++) {
        if (getComputedStyle(abbr[i]).display != 'none') {
            abbr[i].style.display = 'none';
            exp[i].style.display = 'inline';
        }else{
            abbr[i].style.display = 'inline';
            exp[i].style.display = 'none'
        }
        
    }
} 

/*evidenzia cancellature*/

function highCanc(idElemento, btnId){
    var div = document.getElementById(idElemento);
    
    var canc = div.querySelectorAll('.del');

    for(var i = 0; i < canc.length; i++){
        if (getComputedStyle(canc[i]).display != 'none'){
            canc[i].style.display = 'none';
        }else{
            canc[i].style.display = 'inline';
        }
    }
}
