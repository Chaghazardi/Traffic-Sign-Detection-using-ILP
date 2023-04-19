from pyswip import Prolog, Variable, Functor
import os
def learn(file_name):
	prolog = Prolog()
	program_name=file_name[:-3]
	#print(program_name)
	prolog.consult(file_name)
	a=list(prolog.query("induce(program_name)"))
	b=list(prolog.query("aleph:write_rules('theory.txt',program_name)"))
	
def generate_theory_aleph(file_name):
    f = open("theory.txt")
    theory=[]
    for line in f.read().splitlines():
        theory.append(line)
    flag_1="true"
    string=""
    hypo=[]
    for i in theory:
        if flag_1=="true":
            if i[-1]==".":
                string=string+i[0:-1]
                hypo.append(string)
                #print(hypo)
                string=""
            else:
                string=string+i
    return hypo

def generate_theory_metagol(file_name):
    f = open("theory.txt")
    theory=[]
    for line in f.read().splitlines():
        theory.append(line)
    return theory

def evaluate_theory(file_name,hypo):
    prolog = Prolog()
    prolog.consult(file_name)
    f = open(file_name)
    pos_start=0
    pos_end=0
    neg_start=0
    neg_end=0
    for i, line in enumerate(f.read().splitlines()):
        if line==":-begin_in_pos.":
            pos_start=i
        if line==":-end_in_pos.":
            pos_end=i
        if line==":-begin_in_neg.":
            neg_start=i
        if line==":-end_in_neg.":
            neg_end=i
    f = open(file_name)
    all_lines_variable = f.readlines()
    pos_examples=[]
    for i in range(pos_start+1,pos_end):
        pos_examples.append(all_lines_variable[i][0:-2])
    neg_examples=[]
    for i in range(neg_start+1,neg_end):
        neg_examples.append(all_lines_variable[i][0:-2])
    pos_length=len(pos_examples)
    neg_length=len(neg_examples)
    for i in hypo:
        pos_count=0
        neg_count=0
        #print(i)
        prolog.assertz(i)
    for i in pos_examples:
        a=list(prolog.query(i))
            #print(a)
        if len(a)>0:
            pos_count=pos_count+1
    for i in neg_examples:
        a=list(prolog.query(i))
        if len(a)<1:
            neg_count=neg_count+1
            #print(a)
            #print(len(a))
    #print(pos_count, neg_count)
    acc=(pos_count+neg_count)/(pos_length+neg_length)
    #print("Accuracy", acc*100)
    return acc
