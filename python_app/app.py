from fastapi import FastAPI

app = FastAPI()


@app.get("/hello/")
def return_hello(stranger='Parimal'): 
    return {'Hi':f'Hello from second FastAPI {stranger}'}

@app.get("/Bye/")
def return_hello(stranger='Parimal'): 
    return {'Bye':f'Bye from second FastAPI {stranger}'}