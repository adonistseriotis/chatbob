import './index.css';
import React from 'react';
import ReactDOM from 'react-dom';
import { run, getquestion, answer } from './axiosConfig';
import background from './background.jpg';

const App = () => {

	React.useEffect(() => {
		document.title = "ChatBob";
	})
	const [ theme, setTheme ] = React.useState('dark')
	const themeVars = theme === 'dark' ? {
		app: {backgroundColor: '#2b8c99'},
		terminal: {boxShadow: '0 2px 5px #111'},
		window: {backgroundColor: '#000', color: '#39ff14'},
		field: {backgroundColor: '#000', color: '#39ff14', fontWeight: 'normal'},
		cursor: {animation : '1.02s blink-dark step-end infinite'}
	} : {
		app: {backgroundImage: `url(${background})`},
		terminal: {boxShadow: '0 2px 5px #33333375'},
		window: {backgroundColor: '#5F5C6D', color: '#39ff14'},
		field: {backgroundColor: '#E3E3E3', color: '#474554', fontWeight: 'bold'},
		cursor: {animation : '1.02s blink-light step-end infinite'}
	}
	
	return <div id="app" style={themeVars.app}>
		<div style={{marginBottom:'10vh', fontSize: '5rem'}}>Welcome to ChatBob</div>
		<Terminal theme={themeVars} setTheme={setTheme}/>
		<div style={{fontSize: '1.5rem', marginTop: '5vh'}}>ChatBob is our friendly chatbot, designed for you to be comfortable sharing your thoughts daily.</div>
	</div>
}

/* Terminal */
const Terminal = ({ theme, setTheme }) => {
	const [ maximized, setMaximized ] = React.useState(false)
	const [ title, setTitle ] = React.useState('ChatBob portal')
	const handleClose = () => (window.location.href = 'https://codepen.io/HuntingHawk')
	const handleMinMax = () => {
		setMaximized(!maximized)
		document.querySelector('#field').focus()
	}
	
	return <div id="terminal" style={maximized ? {height: '100vh', width: '100vw', maxWidth: '100vw'} : theme.terminal}>
		<div id="window" style={theme.window}>
			<button className="btn red" onClick={handleClose}/>
			<button id="useless-btn" className="btn yellow"/>
			<button className="btn green" onClick={handleMinMax}/>
			<span id="title" style={{color: theme.window.color}}>{title}</span>
		</div>
		<Field theme={theme} setTheme={setTheme} setTitle={setTitle}/>
	</div>
}


class Field extends React.Component {
	constructor(props) {
		super(props)
		this.state = {
			commandHistory: [],
			commandHistoryIndex: 0,
			fieldHistory: [{text: 'Hi, I\'m your friend ChatBob, feel free to share your thoughts with me. Hit run to pop a question.'}, {text: 'Type HELP to see the full list of commands.', hasBuffer: true}],
			userInput: '',
			isMobile: false,
			run: false
		}
		this.recognizedCommands = [{
			command: 'help',
			purpose: 'Provides help information for React Terminal commands.'
		}, {
			command: 'date',
			purpose: 'Displays the current date.'
		}, {
			command: 'run',
			purpose: 'Start answering questions.',
		}, {
			command: 'cls',
			purpose: 'Clears the screen.'
		}, {
			command: 'time',
			purpose: 'Displays the current time.'
		}, {
			command: 'about',
			isMain: true,
			purpose: 'Displays basic information about ChatBob.'
		}, {
			command: 'projects',
			isMain: true,
			purpose: 'Displays information about what projects Jacob has done in the past.'
		}]
		this.handleTyping = this.handleTyping.bind(this)
		this.handleInputEvaluation = this.handleInputEvaluation.bind(this)
		this.handleInputExecution = this.handleInputExecution.bind(this)
		this.handleContextMenuPaste = this.handleContextMenuPaste.bind(this)
	}
	componentDidMount() {
		if (typeof window.orientation !== "undefined" || navigator.userAgent.indexOf('IEMobile') !== -1) {
			this.setState(state => ({
				isMobile: true,
				fieldHistory: [...state.fieldHistory, {isCommand: true}, {
					text: `Unfortunately due to this application being an 'input-less' environment, mobile is not supported. I'm working on figuring out how to get around this, so please bear with me! In the meantime, come on back if you're ever on a desktop.`,
					isError: true,
					hasBuffer: true
				}]
			}))
		}
		
		const userElem = document.querySelector('#field')
		
		// userElem.focus()
		
		document.querySelector('#useless-btn').addEventListener('click', () => this.setState(state => ({
			fieldHistory: [...state.fieldHistory, {isCommand: true}, {text: 'SYS >> That button doesn\'t do anything.', hasBuffer: true}]
		})))
	}
	componentDidUpdate() {
		const userElem = document.querySelector('#field')
		
		userElem.scrollTop = userElem.scrollHeight
	}
	handleTyping(e) {
		e.preventDefault()
		
		const { key, ctrlKey, altKey } = e
		const forbidden = [
			...Array.from({length: 12}, (x, y) => `F${y + 1}`),
			'ContextMenu', 'Meta', 'NumLock', 'Shift', 'Control', 'Alt',
			'CapsLock', 'Tab', 'ScrollLock', 'Pause', 'Insert', 'Home',
			'PageUp', 'Delete', 'End', 'PageDown'
		]

		if (!forbidden.some(s => s === key) && !ctrlKey && !altKey) {
			if (key === 'Backspace') {
				this.setState(state => state.userInput = state.userInput.slice(0, -1))
			} else if (key === 'Escape') {
				this.setState({ userInput: '' })
			} else if (key === 'ArrowUp' || key === 'ArrowLeft') {
				const { commandHistory, commandHistoryIndex } = this.state
				const upperLimit = commandHistoryIndex >= commandHistory.length
				
				if (!upperLimit) {
					this.setState(state => ({
						commandHistoryIndex: state.commandHistoryIndex += 1,
						userInput: state.commandHistory[state.commandHistoryIndex - 1]
					}))
				}
			} else if (key === 'ArrowDown' || key === 'ArrowRight') {
				const { commandHistory, commandHistoryIndex } = this.state
				const lowerLimit = commandHistoryIndex === 0
				
				if (!lowerLimit) {
					this.setState(state => ({
						commandHistoryIndex: state.commandHistoryIndex -= 1,
						userInput: state.commandHistory[state.commandHistoryIndex - 1] || ''
					}))
				}
			} else if (key === 'Enter') {
				const { userInput } = this.state
				
				if (userInput.length) {
					this.setState(state => ({
						commandHistory: userInput === '' ? state.commandHistory : [userInput, ...state.commandHistory],
						commandHistoryIndex: 0,
						fieldHistory: [...state.fieldHistory, {text: userInput, isCommand: true}],
						userInput: ''
					}), () => this.handleInputEvaluation(userInput))
				} else {
					this.setState(state => ({
						fieldHistory: [...state.fieldHistory, {isCommand: true}]
					}))
				}				
			} else {
				this.setState(state => ({
					commandHistoryIndex: 0,
					userInput: state.userInput += key
				}))
			}
		}
	}
	handleInputEvaluation(input) {
		try {
			const evaluatedForArithmetic = Math.evaluate(input)

			if (!isNaN(evaluatedForArithmetic)) {
				return this.setState(state => ({fieldHistory: [...state.fieldHistory, {text: evaluatedForArithmetic}]}))
			}

			throw Error
		} catch (err) {
			const { recognizedCommands, giveError, handleInputExecution } = this
			const cleanedInput = input.toLowerCase().trim()
			const dividedInput = cleanedInput.split(' ')
			const parsedCmd = dividedInput[0]
			const parsedParams = dividedInput.slice(1).filter(s => s[0] !== '-')
			const parsedFlags = dividedInput.slice(1).filter(s => s[0] === '-')
			// const isError = !recognizedCommands.some(s => s.command === parsedCmd)

			// if (isError) {
			// 	return this.setState(state => ({fieldHistory: [...state.fieldHistory, giveError('nr', input)]}))
			// }

			return handleInputExecution(cleanedInput, parsedCmd, parsedParams, parsedFlags)
		}
	}
	handleInputExecution(fullText,cmd, params = [], flags = []) {
		if (cmd === 'help') {
			if (params.length) {
				if (params.length > 1) {
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, this.giveError('bp', {cmd: 'HELP', noAccepted: 1})]
					}))
				}
				
				const cmdsWithHelp = this.recognizedCommands.filter(s => s.help)
				
				if (cmdsWithHelp.filter(s => s.command === params[0]).length) {
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, {
							text: cmdsWithHelp.filter(s => s.command === params[0])[0].help,
							hasBuffer: true
						}]
					}))
				} else if (this.recognizedCommands.filter(s => s.command === params[0]).length) {
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, {
							text: [
								`No additional help needed for ${this.recognizedCommands.filter(s => s.command === params[0])[0].command.toUpperCase()}`,
								this.recognizedCommands.filter(s => s.command === params[0])[0].purpose
							],
							hasBuffer: true
						}]
					}))
				}
				
				return this.setState(state => ({
					fieldHistory: [...state.fieldHistory, this.giveError('up', params[0].toUpperCase())]
				}))
			}
			
			return this.setState(state => ({
				fieldHistory: [...state.fieldHistory, {
					text: [
						'Main commands:',
						...this.recognizedCommands
							.sort((a, b) => a.command.localeCompare(b.command))
							.filter(({ isMain }) => isMain)
							.map(({ command, purpose }) => `${command.toUpperCase()}${Array.from({length: 15 - command.length}, x => '.').join('')}${purpose}`),
						'',
						'All commands:',
						...this.recognizedCommands
							.sort((a, b) => a.command.localeCompare(b.command))
							.map(({ command, purpose }) => `${command.toUpperCase()}${Array.from({length: 15 - command.length}, x => '.').join('')}${purpose}`),
						'',
						'For help about a specific command, type HELP <CMD>, e.g. HELP PROJECT.'
					],
					hasBuffer: true
				}]
			}))
		} else if (cmd === 'cls') {
			return this.setState({fieldHistory: []})
		} else if (cmd === 'run') {
			const action = run()
			.then( res => {
				return this.setState(state => ({
					fieldHistory: [...state.fieldHistory, {text: res.data.question, isQuestion: true, hasBuffer: true}],
					run: true
				}))
			})
			.catch( err => {
				return this.setState(state => ({
					fieldHistory: [...state.fieldHistory, this.giveError('api','')]
				}))
			})
			
		} else if (cmd === 'date') {
			return this.setState(state => ({
				fieldHistory: [...state.fieldHistory, {text: `The current date is: ${new Date(Date.now()).toLocaleDateString()}`, hasBuffer: true}]
			}))
		} else if (cmd === 'cmd') {
			return this.setState(state => ({
				fieldHistory: [...state.fieldHistory, {text: 'Launching new instance of the React Terminal...', hasBuffer: true}]
			}), () => window.open('https://codepen.io/HuntingHawk/full/rNaEZxW'))
		} else if (cmd === 'theme') {
			const { setTheme } = this.props
			
			if (flags.length === 1 && (['-d', '-dark', '-l', '-light'].some(s => s === flags[0]))) {
				const themeToSet = flags[0] === '-d' || flags[0] === '-dark' ? 'dark' : 'light'
				
				return this.setState(state => ({
					fieldHistory: [...state.fieldHistory, {text: `Set the theme to ${themeToSet.toUpperCase()} mode`, hasBuffer: true}]
				}), () => setTheme(themeToSet))
			}
			
			return this.setState(state => ({
				fieldHistory: [...state.fieldHistory, this.giveError(!flags.length ? 'nf' : 'bf', 'THEME')]
			}))
		} else if (cmd === 'exit') {
			if(this.state.run){
				
				answer(cmd)
				.then(res => {
					console.log("YOYOYY",res.data);
					let value = 0;
					let emotion;
					let emotionEmoji;
					for (const key in res.data){
						if(res.data[key] > value)
						{
							emotion = key;
							value = res.data[key]
						}
					}
					
					switch(emotion){
						case 'anger':
							emotionEmoji = '(???_???)';
							break;
						case 'joy':
							emotionEmoji = '(?????????)';
							break;
						case 'surprise':
							emotionEmoji = '???(???????)???';
							break;
						case 'fear':
							emotionEmoji = '???(?? ??? ?? l|l)/';
							break;
						case 'sadness':
							emotionEmoji = '(-_-)';
							break;
						default:
							emotionEmoji = ':/';
							break;
					}
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, {text: `I think you're feeling a bit ${emotionEmoji} (${emotion}).`, isEmotion: true, hasBuffer: true}],
						run: false
					}))
				})
				.catch( err => {
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, this.giveError('api','')]
					}))
				})
			}
			else{
				return this.setState(state => ({
					fieldHistory: [...state.fieldHistory, this.giveError('exitnorun',cmd)]
				}))
			}

		} else if (cmd === 'time') {
			return this.setState(state => ({
				fieldHistory: [...state.fieldHistory, {text: `The current time is: ${new Date(Date.now()).toLocaleTimeString()}`, hasBuffer: true}]
			}))
		} else if (cmd === 'about') {
			return this.setState(state => ({
				fieldHistory: [...state.fieldHistory, {text: [
					'Hey there!',
					`My name is ChatBob, I'm a chatbot developed to detect your emotions by your answers. My parents are Aris Koutris and Thodoris Siozos. Are you ready to chat???`
				], hasBuffer: true}]
			}))
		} 
		else {
			if(this.state.run){
				answer(fullText)
				.then(res => {
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, {text: res.data.question, isQuestion: true, hasBuffer: true}],
						run: true
					}))
				})
				.catch( err => {
					return this.setState(state => ({
						fieldHistory: [...state.fieldHistory, this.giveError('api','')]
					}))
				})
			}
			else{
				return this.setState(state => ({
					fieldHistory: [...state.fieldHistory, this.giveError('up',cmd)]
				}))
			}
		}
		//else if (cmd === 'experience') {
		// 	return this.setState(state => ({
		// 		fieldHistory: [...state.fieldHistory, {text: [
		// 			'Certificates:',
		// 			'ReactJS...............................Udacity',
		// 			'Front-end Development.................freeCodeCamp',
		// 			'JS Algorithms and Data Structures.....freeCodeCamp',
		// 			'Front-end Libraries...................freeCodeCamp',
		// 			'Responsive Web Design.................freeCodeCamp',
		// 			'',
		// 			'Work:',
		// 			'Shugoll Research',
		// 			'Database Technician',
		// 			'June 2015 - Present'
		// 		], hasBuffer: true}]
		// 	}))
		// } else if (cmd === 'skills') {
		// 	return this.setState(state => ({
		// 		fieldHistory: [...state.fieldHistory, {text: [
		// 			'Languages:',
		// 			'HTML',
		// 			'CSS',
		// 			'JavaScript',
		// 			'',
		// 			'Libraries/Frameworks:',
		// 			'Node',
		// 			'Express',
		// 			'React',
		// 			'Next',
		// 			'React Native',
		// 			'Redux',
		// 			'jQuery',
		// 			'',
		// 			'Other:',
		// 			'Git',
		// 			'GitHub',
		// 			'Heroku',
		// 			'CodePen',
		// 			'CodeSandBox',
		// 			'Firebase',
		// 			'NeDB'
		// 		], hasBuffer: true}]
		// 	}))
		// } else if (cmd === 'contact') {
		// 	return this.setState(state => ({
		// 		fieldHistory: [...state.fieldHistory, {text: [
		// 			'Email: contact@jacoblockett.com',
		// 			'Website: jacoblockett.com',
		// 			'LinkedIn: @jacoblockett',
		// 			'GitHub: @huntinghawk1415',
		// 			'CodePen: @HuntingHawk'
		// 		], hasBuffer: true}]
		// 	}))
		// } else if (cmd === 'projects') {
		// 	return this.setState(state => ({
		// 		fieldHistory: [...state.fieldHistory, {text: [
		// 			'To view any of these projects live or their source files, type PROJECT <TITLE>, e.g. PROJECT Minesweeper.',
		// 			'',
		// 			'Minesweeper',
		// 			'Built with React',
		// 			`Some time ago I because increasingly addicted to minesweeper, specifically the version offered by Google. In fact, I was so addicted that I decided to build the damn thing.`,
		// 			'',
		// 			'PuniUrl',
		// 			'Built with Express, Firebase',
		// 			'Ever heard of TinyUrl? Ever been to their website? Atrocious. So I made my own version of it.',
		// 			'',
		// 			'Taggen',
		// 			'Built with Node',
		// 			`I was building a MS Excel spreadsheet parser (haven't finished it, imagine my stove has 10 rows of backburners) and needed a way to generate non-opinionated XML files. There were projects out there that came close, but I decided it would be fun to build it on my own.`,
		// 			'',
		// 			'Forum',
		// 			'Built with React, Redux, Bootstrap',
		// 			`This was a project I had to build for my final while taking Udacity's React Nanodegree certification course. It's an app that tracks posts and comments, likes, etc. Nothing too complicated, except for Redux... God I hate Redux.`,
		// 			'',
		// 			'Simon',
		// 			'Built with vanilla ice cream',
		// 			'The classic Simon memory game. I originally built this for the freeCodeCamp legacy certification, but later came back to it because I hated how bad I was with JavaScript at the time. I also wanted to see how well I could build it during a speed-coding session. Just over an hour.',
		// 		], hasBuffer: true}]
		// 	}))
		// } else if (cmd === 'project') {
		// 	if (params.length === 1) {
		// 		const projects = [{
		// 			title: 'minesweeper',
		// 			live: 'https://codepen.io/HuntingHawk/full/GRgLWKV'
		// 		}, {
		// 			title: 'puniurl',
		// 			live: 'http://www.puniurl.com/'
		// 		}, {
		// 			title: 'taggen',
		// 			live: 'https://github.com/huntinghawk1415/Taggen'
		// 		}, {
		// 			title: 'forum',
		// 			live: 'https://github.com/huntinghawk1415/ReactND-Readable'
		// 		}, {
		// 			title: 'simon',
		// 			live: 'https://codepen.io/HuntingHawk/full/mNPVgj'
		// 		}]
				
		// 		return this.setState(state => ({
		// 			fieldHistory: [...state.fieldHistory, {text: `Launching ${params[0]}...`, hasBuffer: true}]
		// 		}), () => window.open(projects.filter(s => s.title === params[0])[0].live))
		// 	}
			
		// 	return this.setState(state => ({
		// 		fieldHistory: [...state.fieldHistory, this.giveError('bp', {cmd: 'PROJECT', noAccepted: 1})]
		// 	}))
		// } else if (cmd === 'title') {
		// 	return this.setState(state => ({
		// 		fieldHistory: [...state.fieldHistory, {
		// 			text: `Set the React Terminal title to ${params.length > 0 ? params.join(' ') : '<BLANK>'}`,
		// 			hasBuffer: true
		// 		}]
		// 	}), () => this.props.setTitle(params.length > 0 ? params.join(' ') : ''))
		// }
	}
	handleContextMenuPaste(e) {
		e.preventDefault()
		
		if ('clipboard' in navigator) {
			navigator.clipboard.readText().then(clipboard => this.setState(state => ({
				userInput: `${state.userInput}${clipboard}`
			})))
		}
	}
	giveError(type, extra) {
		const err = { text: '', isError: true, hasBuffer: true}
		
		if (type === 'nr') {
			err.text = `${extra} : The term or expression '${extra}' is not recognized. Check the spelling and try again. If you don't know what commands are recognized, type HELP.`
		} else if (type === 'nf') {
			err.text = `The ${extra} command requires the use of flags. If you don't know what flags can be used, type HELP ${extra}.`
		} else if (type === 'bf') {
			err.text = `The flags you provided for ${extra} are not valid. If you don't know what flags can be used, type HELP ${extra}.`
		} else if (type === 'bp') {
			err.text = `The ${extra.cmd} command requires ${extra.noAccepted} parameter(s). If you don't know what parameters to use, type HELP ${extra.cmd}.`
		} else if (type === 'up') {
			err.text = `The command ${extra} is not supported by the HELP utility.`
		} else if (type === 'api') {
			err.text = `Something is wrong, please try again.`
		} else if (type === 'exitnorun') {
			err.text = `Execute run first and answer at least one question.`
		}
		
		
		return err
	}
	render() {
		const { theme } = this.props
		const { fieldHistory, userInput } = this.state
		
		return <div
					 id="field"
					 className={theme.app.backgroundColor === '#333444' ? 'dark' : 'light'}
					 style={theme.field}
					 onKeyDown={e => this.handleTyping(e)}
					 tabIndex={0}
					 onContextMenu={e => this.handleContextMenuPaste(e)}
					 >
			{fieldHistory.map(({ text, isCommand, isError, hasBuffer, isEmotion, isQuestion }) => {
				if (Array.isArray(text)) {
					return <MultiText input={text} isError={isError} hasBuffer={hasBuffer} isEmotion={isEmotion} isQuestion={isQuestion}/>
				}
				
				return <Text input={text} isCommand={isCommand} isError={isError} hasBuffer={hasBuffer} isEmotion={isEmotion} isQuestion={isQuestion}/>
			})}
			<UserText input={userInput} theme={theme.cursor}/>
		</div>
	}
}
const Text = ({ input, isCommand, isError, hasBuffer, isEmotion, isQuestion }) => <>
	<div>
		{isCommand && <div id="query">ChatBob></div>}
		<span className={!isCommand && isError ? 'error' : (isEmotion ? 'emotion' : (isQuestion ? 'question' : ''))}>{input}</span>
	</div>
	{hasBuffer && <div></div>}
</>
const MultiText = ({ input, isError, hasBuffer, isEmotion, isQuestion }) => <>
	{input.map(s => <Text input={s} isError={isError} isEmotion={isEmotion} isQuestion={isQuestion}/>)}
	{hasBuffer && <div></div>}
</>
const UserText = ({ input, theme }) => <div>
	<div id="query">Me></div>
	<span>{input}</span>
	<div id="cursor" style={theme}></div>
</div>

ReactDOM.render(<App />, document.querySelector('#root'))