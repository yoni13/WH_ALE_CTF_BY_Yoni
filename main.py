from flask import Flask,render_template,request,abort,send_file
app = Flask('__name__')

import os
@app.route('/')
def index():
	return render_template('index.html')
@app.route('/teas')
def no():
	return abort(403)
@app.route('/getimg')
def getimg():
		try:
			find = request.args.get('data')
			print(os.getcwd()+'/statics/'+find)
			return send_file(os.getcwd()+'/statics/' + find)
		except:
			return abort(404)
