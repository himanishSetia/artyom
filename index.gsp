<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="artyom" />
  </head>
  <body>
    <div ng-view></div>

    <input type="button" name="" name="Start" onclick="startArtynom()"><br>
    <input type="button" name="" name="Stop" onclick="stopArtynom()" >
    <span id="output"></span>
  </body>
  <script>
	
	artyom.addCommands([
	{
		description:"Artyom",
		indexes:["hello","hey"],
		action:function(i){
			if(i == 0)
				{
					artyom.say("HELLo how are you");
				}
		}
	}

	{
		indexes:["goodbye"],
		action:function(){
			alert("Its over");
		}
	}
	])


	artyom.redirectRecognisedTextOutput(function(text,isFinal){
		var span = document.getElementById('output');

		if(isFinal){
			span.innerHTML = '';

		}
		else
		{
			span.innerHTML = text;
		}
	})

	function startArtynom(){
		artyom.initialize({
			lang:"en-GB",
			continuous:false,
			debuf:true,
			listen:true
		});
	}


function stopArtynom(){
	artynom.fatality();
}
</script>
</html>
