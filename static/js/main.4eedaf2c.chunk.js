(this.webpackJsonpchatbot=this.webpackJsonpchatbot||[]).push([[0],{25:function(t,e,n){},50:function(t,e,n){"use strict";n.r(e);var r=n(1),o=n(19),i=n(20),a=n(4),s=n(24),c=n(23),u=n(9),d=(n(25),n(3)),f=n.n(d),l=n(21),h=n.n(l),m=n(5),p=n.n(m),y=n(8),b=n(22),j=n.n(b).a.create({baseURL:"http://c63ea32397d9.ngrok.io",timeout:5e3,headers:{"Content-Type":"application/json",Accept:"application/json"}});function g(){return x.apply(this,arguments)}function x(){return(x=Object(y.a)(p.a.mark((function t(){var e;return p.a.wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,j.get("/runquestionnaire").then((function(t){return t})).catch((function(t){throw t}));case 2:return e=t.sent,console.log(e),t.abrupt("return",e);case 5:case"end":return t.stop()}}),t)})))).apply(this,arguments)}function v(t){return H.apply(this,arguments)}function H(){return(H=Object(y.a)(p.a.mark((function t(e){var n;return p.a.wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,j.post("/answer",{answer:e}).then((function(t){return t})).catch((function(t){throw t}));case 2:return n=t.sent,t.abrupt("return",n);case 4:case"end":return t.stop()}}),t)})))).apply(this,arguments)}var O=n.p+"static/media/background.bc97f3b8.jpg",w=n(0),E=function(){f.a.useEffect((function(){document.title="ChatBob"}));var t=f.a.useState("dark"),e=Object(u.a)(t,2),n=e[0],r=e[1],o="dark"===n?{app:{backgroundColor:"#2b8c99"},terminal:{boxShadow:"0 2px 5px #111"},window:{backgroundColor:"#000",color:"#39ff14"},field:{backgroundColor:"#000",color:"#39ff14",fontWeight:"normal"},cursor:{animation:"1.02s blink-dark step-end infinite"}}:{app:{backgroundImage:"url(".concat(O,")")},terminal:{boxShadow:"0 2px 5px #33333375"},window:{backgroundColor:"#5F5C6D",color:"#39ff14"},field:{backgroundColor:"#E3E3E3",color:"#474554",fontWeight:"bold"},cursor:{animation:"1.02s blink-light step-end infinite"}};return Object(w.jsxs)("div",{id:"app",style:o.app,children:[Object(w.jsx)("div",{style:{marginBottom:"10vh",fontSize:"5rem"},children:"Welcome to ChatBob"}),Object(w.jsx)(k,{theme:o,setTheme:r}),Object(w.jsx)("div",{style:{fontSize:"1.5rem",marginTop:"5vh"},children:"ChatBob is our friendly chatbot, designed for you to be comfortable sharing your thoughts daily."})]})},k=function(t){var e=t.theme,n=t.setTheme,r=f.a.useState(!1),o=Object(u.a)(r,2),i=o[0],a=o[1],s=f.a.useState("ChatBob portal"),c=Object(u.a)(s,2),d=c[0],l=c[1];return Object(w.jsxs)("div",{id:"terminal",style:i?{height:"100vh",width:"100vw",maxWidth:"100vw"}:e.terminal,children:[Object(w.jsxs)("div",{id:"window",style:e.window,children:[Object(w.jsx)("button",{className:"btn red",onClick:function(){return window.location.href="https://codepen.io/HuntingHawk"}}),Object(w.jsx)("button",{id:"useless-btn",className:"btn yellow"}),Object(w.jsx)("button",{className:"btn green",onClick:function(){a(!i),document.querySelector("#field").focus()}}),Object(w.jsx)("span",{id:"title",style:{color:e.window.color},children:d})]}),Object(w.jsx)(C,{theme:e,setTheme:n,setTitle:l})]})},C=function(t){Object(s.a)(n,t);var e=Object(c.a)(n);function n(t){var r;return Object(o.a)(this,n),(r=e.call(this,t)).state={commandHistory:[],commandHistoryIndex:0,fieldHistory:[{text:"Hi, I'm your friend ChatBob, feel free to share your thoughts with me. Hit run to pop a question."},{text:"Type HELP to see the full list of commands.",hasBuffer:!0}],userInput:"",isMobile:!1,run:!1},r.recognizedCommands=[{command:"help",purpose:"Provides help information for React Terminal commands."},{command:"date",purpose:"Displays the current date."},{command:"run",purpose:"Start answering questions."},{command:"cls",purpose:"Clears the screen."},{command:"time",purpose:"Displays the current time."},{command:"about",isMain:!0,purpose:"Displays basic information about ChatBob."},{command:"projects",isMain:!0,purpose:"Displays information about what projects Jacob has done in the past."}],r.handleTyping=r.handleTyping.bind(Object(a.a)(r)),r.handleInputEvaluation=r.handleInputEvaluation.bind(Object(a.a)(r)),r.handleInputExecution=r.handleInputExecution.bind(Object(a.a)(r)),r.handleContextMenuPaste=r.handleContextMenuPaste.bind(Object(a.a)(r)),r}return Object(i.a)(n,[{key:"componentDidMount",value:function(){var t=this;"undefined"===typeof window.orientation&&-1===navigator.userAgent.indexOf("IEMobile")||this.setState((function(t){return{isMobile:!0,fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{isCommand:!0},{text:"Unfortunately due to this application being an 'input-less' environment, mobile is not supported. I'm working on figuring out how to get around this, so please bear with me! In the meantime, come on back if you're ever on a desktop.",isError:!0,hasBuffer:!0}])}}));document.querySelector("#field");document.querySelector("#useless-btn").addEventListener("click",(function(){return t.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{isCommand:!0},{text:"SYS >> That button doesn't do anything.",hasBuffer:!0}])}}))}))}},{key:"componentDidUpdate",value:function(){var t=document.querySelector("#field");t.scrollTop=t.scrollHeight}},{key:"handleTyping",value:function(t){var e=this;t.preventDefault();var n=t.key,o=t.ctrlKey,i=t.altKey;if(![].concat(Object(r.a)(Array.from({length:12},(function(t,e){return"F".concat(e+1)}))),["ContextMenu","Meta","NumLock","Shift","Control","Alt","CapsLock","Tab","ScrollLock","Pause","Insert","Home","PageUp","Delete","End","PageDown"]).some((function(t){return t===n}))&&!o&&!i)if("Backspace"===n)this.setState((function(t){return t.userInput=t.userInput.slice(0,-1)}));else if("Escape"===n)this.setState({userInput:""});else if("ArrowUp"===n||"ArrowLeft"===n){var a=this.state,s=a.commandHistory;a.commandHistoryIndex>=s.length||this.setState((function(t){return{commandHistoryIndex:t.commandHistoryIndex+=1,userInput:t.commandHistory[t.commandHistoryIndex-1]}}))}else if("ArrowDown"===n||"ArrowRight"===n){var c=this.state;c.commandHistory;0===c.commandHistoryIndex||this.setState((function(t){return{commandHistoryIndex:t.commandHistoryIndex-=1,userInput:t.commandHistory[t.commandHistoryIndex-1]||""}}))}else if("Enter"===n){var u=this.state.userInput;u.length?this.setState((function(t){return{commandHistory:""===u?t.commandHistory:[u].concat(Object(r.a)(t.commandHistory)),commandHistoryIndex:0,fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:u,isCommand:!0}]),userInput:""}}),(function(){return e.handleInputEvaluation(u)})):this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{isCommand:!0}])}}))}else this.setState((function(t){return{commandHistoryIndex:0,userInput:t.userInput+=n}}))}},{key:"handleInputEvaluation",value:function(t){try{var e=Math.evaluate(t);if(!isNaN(e))return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:e}])}}));throw Error}catch(a){this.recognizedCommands,this.giveError;var n=this.handleInputExecution,o=t.toLowerCase().trim(),i=o.split(" ");return n(o,i[0],i.slice(1).filter((function(t){return"-"!==t[0]})),i.slice(1).filter((function(t){return"-"===t[0]})))}}},{key:"handleInputExecution",value:function(t,e){var n=this,o=arguments.length>2&&void 0!==arguments[2]?arguments[2]:[],i=arguments.length>3&&void 0!==arguments[3]?arguments[3]:[];if("help"===e){if(o.length){if(o.length>1)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("bp",{cmd:"HELP",noAccepted:1})])}}));var a=this.recognizedCommands.filter((function(t){return t.help}));return a.filter((function(t){return t.command===o[0]})).length?this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:a.filter((function(t){return t.command===o[0]}))[0].help,hasBuffer:!0}])}})):this.recognizedCommands.filter((function(t){return t.command===o[0]})).length?this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:["No additional help needed for ".concat(n.recognizedCommands.filter((function(t){return t.command===o[0]}))[0].command.toUpperCase()),n.recognizedCommands.filter((function(t){return t.command===o[0]}))[0].purpose],hasBuffer:!0}])}})):this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("up",o[0].toUpperCase())])}}))}return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:["Main commands:"].concat(Object(r.a)(n.recognizedCommands.sort((function(t,e){return t.command.localeCompare(e.command)})).filter((function(t){return t.isMain})).map((function(t){var e=t.command,n=t.purpose;return"".concat(e.toUpperCase()).concat(Array.from({length:15-e.length},(function(t){return"."})).join("")).concat(n)}))),["","All commands:"],Object(r.a)(n.recognizedCommands.sort((function(t,e){return t.command.localeCompare(e.command)})).map((function(t){var e=t.command,n=t.purpose;return"".concat(e.toUpperCase()).concat(Array.from({length:15-e.length},(function(t){return"."})).join("")).concat(n)}))),["","For help about a specific command, type HELP <CMD>, e.g. HELP PROJECT."]),hasBuffer:!0}])}}))}if("cls"===e)return this.setState({fieldHistory:[]});if("run"===e)g().then((function(t){return n.setState((function(e){return{fieldHistory:[].concat(Object(r.a)(e.fieldHistory),[{text:t.data.question,isQuestion:!0,hasBuffer:!0}]),run:!0}}))})).catch((function(t){return n.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("api","")])}}))}));else{if("date"===e)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:"The current date is: ".concat(new Date(Date.now()).toLocaleDateString()),hasBuffer:!0}])}}));if("cmd"===e)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:"Launching new instance of the React Terminal...",hasBuffer:!0}])}}),(function(){return window.open("https://codepen.io/HuntingHawk/full/rNaEZxW")}));if("theme"===e){var s=this.props.setTheme;if(1===i.length&&["-d","-dark","-l","-light"].some((function(t){return t===i[0]}))){var c="-d"===i[0]||"-dark"===i[0]?"dark":"light";return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:"Set the theme to ".concat(c.toUpperCase()," mode"),hasBuffer:!0}])}}),(function(){return s(c)}))}return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError(i.length?"bf":"nf","THEME")])}}))}if("exit"===e){if(!this.state.run)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("exitnorun",e)])}}));v(e).then((function(t){console.log("YOYOYY",t.data);var e,o,i=0;for(var a in t.data)t.data[a]>i&&(e=a,i=t.data[a]);switch(e){case"anger":o="(\u25e3_\u25e2)";break;case"joy":o="(\u2022\u203f\u2022)";break;case"surprise":o="\u30fd(\xb0\u3007\xb0)\uff89";break;case"fear":o="\uff3c(\xba \u25a1 \xba l|l)/";break;case"sadness":o="(-_-)";break;default:o=":/"}return n.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:"I think you're feeling a bit ".concat(o," (").concat(e,")."),isEmotion:!0,hasBuffer:!0}]),run:!1}}))})).catch((function(t){return n.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("api","")])}}))}))}else{if("time"===e)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:"The current time is: ".concat(new Date(Date.now()).toLocaleTimeString()),hasBuffer:!0}])}}));if("about"===e)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[{text:["Hey there!","My name is ChatBob, I'm a chatbot developed to detect your emotions by your answers. My parents are Aris Koutris and Thodoris Siozos. Are you ready to chat???"],hasBuffer:!0}])}}));if(!this.state.run)return this.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("up",e)])}}));v(t).then((function(t){return n.setState((function(e){return{fieldHistory:[].concat(Object(r.a)(e.fieldHistory),[{text:t.data.question,isQuestion:!0,hasBuffer:!0}]),run:!0}}))})).catch((function(t){return n.setState((function(t){return{fieldHistory:[].concat(Object(r.a)(t.fieldHistory),[n.giveError("api","")])}}))}))}}}},{key:"handleContextMenuPaste",value:function(t){var e=this;t.preventDefault(),"clipboard"in navigator&&navigator.clipboard.readText().then((function(t){return e.setState((function(e){return{userInput:"".concat(e.userInput).concat(t)}}))}))}},{key:"giveError",value:function(t,e){var n={text:"",isError:!0,hasBuffer:!0};return"nr"===t?n.text="".concat(e," : The term or expression '").concat(e,"' is not recognized. Check the spelling and try again. If you don't know what commands are recognized, type HELP."):"nf"===t?n.text="The ".concat(e," command requires the use of flags. If you don't know what flags can be used, type HELP ").concat(e,"."):"bf"===t?n.text="The flags you provided for ".concat(e," are not valid. If you don't know what flags can be used, type HELP ").concat(e,"."):"bp"===t?n.text="The ".concat(e.cmd," command requires ").concat(e.noAccepted," parameter(s). If you don't know what parameters to use, type HELP ").concat(e.cmd,"."):"up"===t?n.text="The command ".concat(e," is not supported by the HELP utility."):"api"===t?n.text="Something is wrong, please try again.":"exitnorun"===t&&(n.text="Execute run first and answer at least one question."),n}},{key:"render",value:function(){var t=this,e=this.props.theme,n=this.state,r=n.fieldHistory,o=n.userInput;return Object(w.jsxs)("div",{id:"field",className:"#333444"===e.app.backgroundColor?"dark":"light",style:e.field,onKeyDown:function(e){return t.handleTyping(e)},tabIndex:0,onContextMenu:function(e){return t.handleContextMenuPaste(e)},children:[r.map((function(t){var e=t.text,n=t.isCommand,r=t.isError,o=t.hasBuffer,i=t.isEmotion,a=t.isQuestion;return Array.isArray(e)?Object(w.jsx)(I,{input:e,isError:r,hasBuffer:o,isEmotion:i,isQuestion:a}):Object(w.jsx)(S,{input:e,isCommand:n,isError:r,hasBuffer:o,isEmotion:i,isQuestion:a})})),Object(w.jsx)(B,{input:o,theme:e.cursor})]})}}]),n}(f.a.Component),S=function(t){var e=t.input,n=t.isCommand,r=t.isError,o=t.hasBuffer,i=t.isEmotion,a=t.isQuestion;return Object(w.jsxs)(w.Fragment,{children:[Object(w.jsxs)("div",{children:[n&&Object(w.jsx)("div",{id:"query",children:"ChatBob>"}),Object(w.jsx)("span",{className:!n&&r?"error":i?"emotion":a?"question":"",children:e})]}),o&&Object(w.jsx)("div",{})]})},I=function(t){var e=t.input,n=t.isError,r=t.hasBuffer,o=t.isEmotion,i=t.isQuestion;return Object(w.jsxs)(w.Fragment,{children:[e.map((function(t){return Object(w.jsx)(S,{input:t,isError:n,isEmotion:o,isQuestion:i})})),r&&Object(w.jsx)("div",{})]})},B=function(t){var e=t.input,n=t.theme;return Object(w.jsxs)("div",{children:[Object(w.jsx)("div",{id:"query",children:"Me>"}),Object(w.jsx)("span",{children:e}),Object(w.jsx)("div",{id:"cursor",style:n})]})};h.a.render(Object(w.jsx)(E,{}),document.querySelector("#root"))}},[[50,1,2]]]);
//# sourceMappingURL=main.4eedaf2c.chunk.js.map