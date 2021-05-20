
from flask_ngrok import run_with_ngrok
from flask import Flask
from flask import request
from flask_cors import CORS, cross_origin

app = Flask(__name__)
run_with_ngrok(app)
cors = CORS(app, resources={r"/*": {"origins": "*"}})

global answers

@app.route("/getquestion", methods=['GET'])
def getquestion():
  return {
        "question": questions[random.randrange(20)]
    }

@app.route("/answer", methods=['POST'])
def answer():
  global answers
  request_obj = request.get_json(force=True)
  answer = request_obj.get('answer')
  print(answers)
  if answer == 'exit':
    return analyseQuestionnaire(answers)
  answers.append(answer)
  return getquestion()

@app.route("/runquestionnaire", methods=['GET'])
def runquestionnaire():
  global answers
  answers=[]
  return getquestion()
  


app.run()