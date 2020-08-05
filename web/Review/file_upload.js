

var upload = {}; //리터럴 객체..
$id = function(id){return document.getElementById(id)}
var sel_files = []; //선택된 파일만 저장...
upload.start = function(frm, chooseID, sendID, apZone, url){
    var sendForm = $id(frm);
    var btnChooseID = $id(chooseID);
    var btnSendID = $id(sendID);
    var appendZone = $id(apZone);
    var sendURL = url;




    btnChooseID.onchange = function(e){
        var files = e.target.files;
        for(f of files){
            console.log(f.name);
            upload.imageLoader(f,appendZone);

        }

    }

    appendZone.addEventListener('dragenter', function(e){
        e.preventDefault();
        e.stopPropagation();
    },false);

    appendZone.addEventListener('dragover', function(e){
        e.preventDefault();
        e.stopPropagation();
    },false);

    appendZone.addEventListener('drop', function(e){
        e.preventDefault();

        e.stopPropagation();
        var dt = e.dataTransfer;
        var files = dt.files;
        for(f of files){
            upload.imageLoader(f, appendZone);
        }
    },false);

    btnSendID.onclick = function(){
        btnChooseID.value='';
        var data = new FormData(sendForm);
        var uploadChk = document.getElementsByClassName('upload_chk');

        for(var i=0;i<sel_files.length;i++){

            if(uploadChk[i].checked){
                var name = 'image_';
                data.append(name,sel_files[i]);

            }
        }
        //ajax를 통해 전송
        var xhr = new XMLHttpRequest();
        xhr.open('POST',sendURL);
        xhr.send(data);
        xhr.onreadystatechange = function(){
            if(xhr.status==200 && xhr.readyState==4){
                alert(xhr.responseText);
            }
        }
    }
}

upload.imageLoader = function(f,appendZone){
    sel_files.push(f);
    var reader = new FileReader();
    //fileReader객체가 지정된 파일을 모두 읽은 경우
    reader.onload = function(e){
        let img = document.createElement('img');
        img.setAttribute('style', 'width:200px;height:180px');
        img.src = e.target.result;
        appendZone.append( img_div(img) );

    }
    reader.readAsDataURL(f);

}

img_div = function(img){
    var div= document.createElement('div');
    div.setAttribute('style','display:inline-block;position:relative');

    var btn = document.createElement('input');
    btn.setAttribute('type', 'checkbox');
    btn.setAttribute('class','upload_chk');
    btn.setAttribute('checked','checked');
    btn.setAttribute('style','position:absolute;right:7px;bottom:7px;width:20px;opacity:0.7');

    div.appendChild(img);
    div.appendChild(btn);
    return div;

}