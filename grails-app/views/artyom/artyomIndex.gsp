<head>
  <link rel="shortcut icon" href="../images/development.png">
</head>
<body>
  <div ng-view></div>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-sanitize.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-animate.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-route.min.js"></script>

  <script src="${resource(dir:'js/artyom/routing',file:'artyomRouting.js')}"></script>
  <script src="${resource(dir:'js/artyom/controller',file:'artyomController.js')}"></script>

<!--<script src="${resource(dir:'js/ma/services/prediction',file:'prediction.js')}"></script>-->
  <script src='${resource(dir:'js/artyom',file:'artyom.js')}'></script>
  <script src='${resource(dir:'js/artyom',file:'artyom.min.js')}'></script>
  <script src='${resource(dir:'js/artyom',file:'artyomCommands.js')}'></script>

  <input type="button" name="Start" value="Start" onclick="startArtyom()"><br>
  <input type="button" name="Stop" value="Stop" onclick="stopArtyom()" >
  <span id="output"></span>
</body>
<!--<script>
        
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
      },

      {
              indexes:["goodbye"],
              action:function(){
                      alert("Its over");
              }
      }
      ])


//	artyom.redirectRecognisedTextOutput(function(text,isFinal){
//		var span = document.getElementById('output');
//
//		if(isFinal){
//			span.innerHTML = '';
//
//		}
//		else
//		{
//			span.innerHTML = text;
//		}
//	})

      function startArtyom(){
              artyom.initialize({
                      lang:"en-GB",
                      continuous:false,
                      debuf:true,
                      listen:true
              });
      }


function stopArtyom(){
      artyom.fatality();
}
</script>-->


<script>
var artyomTest;
var startArt = false;
function startArtyom(){
                artyomTest = artyom.initialize({
                        lang:"en-GB",
                        continuous:false,
                        debug:true,
                        listen:true
                });
		
                if(artyomTest){
                        startArt = true;
                alert("Artyom looks great")
                }
                else{
                startArt = false;
                alert("Some error in config")
                }
        }


function stopArtyom(){
        artyom.fatality();
        if(artyom.fatality() && (startArt == true)){
                startArt = false;
                alert("Artyom stopped successfully");
        }
        else if(artyom.fatality() && (startArt == false)){
                alert("Firstly activate artyom")
        }
        else{
                alert("Error in stopping artyom")
        }

        console.log("artyom.fatality() ",artyom.fatality())
}


        artyom.addCommands([
        {
                description:"Artyom can talk too",
                indexes:["hello","hey"],
                action:function(i){
                        if(i == 0){
                        artyom.say("HELLO How are you?");
                                }
                }
        },
        {
                indexes:["goodbye"],
                action:function(){
                        alert("Its over");
                }
        },
        {
        smart:true,
        indexes:["How many people live in *"],
        action:function(i,wildcard){
        switch(wildcard){
        case "india":
        alert("125 crore")
        break;
	
        case "america":
        alert("How can i know about america")
        break;
	
        default:
        alert("I dont know about *");
        break;
        }
        }
        }
        ])


        artyom.redirectRecognizedTextOutput(function(text,isFinal){
                console.log("ENTERED PRINTING FUNCTION")
                var span = document.getElementById('output');

                if(isFinal){
                        span.innerHTML = '';

                }
                else
                {
                        span.innerHTML = text;
                }
        });
</script>
