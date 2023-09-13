<?php
$gpid=trim($_GET['id']);
$gpid1=substr($gpid,0,9);
include 'connect.php';
?>
<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>Digital Signature Signing </TITLE>
<script src="lib/jquery.min.js"></script>
<script src="lib/jquery-ui.min.js"></script>
<script type="text/javascript">
var connection = new WebSocket('wss://127.0.0.1:2041');
	connection.onopen = function () {
	console.log('Connection Opened');
	};
connection.onerror = function (error) 
	{
	alert('Please check the server connection: ' + error);
	document.getElementById("signData").value=error;
	};
	connection.onmessage = function (e) 
	{
	if(e.data.indexOf("subProtocol")==-1)
    //alert(e.data);
    console.log("connected");
    console.log(e.data);
	};
var completeData = '';
var splitData = [];
var i = 0;
var splitLength = 0;
var j = 0;
var actualData = '';
var textId = '';
var k = 0;
var bufLength = 16300;

function setData(txf1, msg)
{
    //msg=dt;
    actualData = msg;
    textId = txf1;
    completeData = msg;
    //alert('completeData length ' + completeData.length);
    if(completeData.length < bufLength)
    {
    //alert('not splitting');
    splitData[0] = msg;
    call(txf1,msg);
    }
    else
    {
    //alert('splitting');
    splitLength = completeData.length / bufLength;
    //alert('splitLength  ' + splitLength);
    var t = 0;
    var tt = k + bufLength + 1;
        for(i = 0; i < splitLength; i++)
        {
        splitData[i] = completeData.substring(t, tt);
        k = k + bufLength;
        t = k + 1;
        tt = t + bufLength;
        //alert(splitData[i]);
        }
    call(txf1,msg);
    }
}
function call(txf1,msg)
{
    var data="";
    var startindex="";
    if(msg.length < bufLength)
    {
        completeData = splitData[0] + 'completed';
		connection.send(completeData);
    }
    else
    {
        if(j == i-1)
        {
        completeData = splitData[j] + 'completed';
        }
        else{
        completeData = splitData[j];
        //alert(splitData[j]);
        }
        j++;
        connection.send(completeData);
    }   
    connection.onerror = function (error) 
    {
    alert('Please check the server connection: ' + error);
    document.getElementById("signData").value=error;
    };
    connection.onmessage = function (e) 
    {
        if(e.data.indexOf("subProtocol")==-1)
        {
            if(e.data == 'sendmore')
            {
            call(textId, actualData);
            }
            else
            {
                data = data + e.data;
                startindex=data.indexOf('completed');
                if(startindex != -1)
                {
                    var dummms = data;
                    var num = dummms;
					if(startindex >26)
                    {
					var dno= document.getElementById("doc").innerHTML;
                    $.ajax({
                            url:'digi_sign22.php?document='+dno,
                            type:'POST',
                            dataType: "text",
							data:{dt:JSON.stringify(num)},
                            processData:true,
							success:function(data,status){
							if(status=="success")
							{
                            document.getElementById("btn").value ="Signed";
						
                            document.getElementById("btn").disabled = true;
                            document.getElementById("docnn").src = data;
							console.log("Signed the Document");
                            console.log(data);
							console.log(status);
							}
							else
							{
								alert('Signing Fails');
								location.reload(true);
								
							}
							
                        }
                    });
                    }else
					{
						alert(data);
						location.reload(true); 
					}
                }  
            }
        }
	};
}
</script>
<style>
.btn-group .button {
    background-color: #0000FF; /* Green */
    border: 1px solid green;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    width: 150px;
    display: block;
}

.btn-group .button:not(:last-child) {
    border-bottom: none; /* Prevent double borders */
}

.btn-group .button:hover {
    background-color: #3e8e41;
}
</style>
<link rel="shortcut icon" href="favicon.ico" >
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
<body >
<TABLE WIDTH=1000 BORDER=0 align="center" CELLPADDING=0 CELLSPACING=0>
<tr>
	<td COLSPAN=12>
	<?
	$doc=$gpid1.'.pdf';
	$tpt = 'http://10.53.4.89/web_auth/output/pdf/unsigned/'.$doc;
	?>
	<iframe width='99%' HEIGHT='560px'  id="docnn" scrollbars=yes src="<?php	
	date_default_timezone_set('Asia/Kolkata');
	$curdt=date("Y-m-d");
	echo $tpt; ?>">
	<p style="font-size: 110%;"><em><strong>ERROR: </strong>  An &#105;frame should be displayed here but your browser version does not support &#105;frames. </em>Please update your browser to its most recent version and try again.</p>	
	</iframe>
	</td>
</tr>
	<p id="doc" ><?php echo  $doc; ?></p>
	<textarea id="cont" cols=100 rows=10 hidden >
    <?php 
	    $dt ='action=signpdf';
		$stt =base64_encode(file_get_contents($tpt));
        $dt1="datatosign=".$stt;
        $dt2='signaction=3';
        $dt3='outputpath=';
        $dt4='signtype=sign';
        $dt5 ='expirycheck=true';
		$dt6 ='coordinate=300,500,535,550';
		/*ist coord horizontol left to right 420*/
		$dt7 ='issuername=' ;
        $dt8 ='certtype=DSC';
        $dt9 ='certclass=2|3';
        $dt0 ='pageno=first';
	
		// IF($row_no == '1') 
			
		/*IF($row_no == '2') $dt6 ='coordinate=445,525,550,565';
		IF($row_no == '3') $dt6 ='coordinate=430,508,535,550'; 
		IF($row_no == '4') $dt6 ='coordinate=455,510,550,550';  
		IF($row_no == '5') $dt6 ='coordinate=455,495,555,530';  
		IF($row_no == '6') $dt6 ='coordinate=450,490,530,520';  
		IF($row_no == '7') $dt6 ='coordinate=452,468,557,512';  
		IF($row_no == '8') $dt6 ='coordinate=455,453,555,500';  
		IF($row_no == '9') $dt6 ='coordinate=455,450,555,490';  
		IF($row_no == '10') $dt6 ='coordinate=455,440,555,470'; */
					
        echo $dt."\n";
        echo $dt1."\n";
        echo $dt2."\n";
        echo $dt3."\n";
        echo $dt4."\n";
        echo $dt5."\n";
        echo $dt6."\n";
        echo $dt7."\n";
        echo $dt8."\n";
        echo $dt9."\n";
        echo $dt0;
		?>
    </textarea>
    <textarea id="signData" cols=50 rows=40 readonly = "readonly" hidden></textarea>
	<tr>
		<td colspan=5 class="btn-group">
        <center>
		<input id="btn" class="button" type="button" value="Sign" onClick='setData("signData",document.getElementById("cont").value)'>
        </center>
		</td>
		<td  class="btn-group">
        <center>
		<input id="bck" class="button" type="button" value="Back" onclick="window.location.href='/web_auth/output/tbl_dept_incharge_list.php'">
        </center>
		</td>
	</tr>
</TABLE>	
</BODY>
</HTML>
 