import os

def lambda_handler(event, context):
    print("Hello AWS Lambda")
    os.environ['greeting'] = 'greeting'
    return "{} from Lambda!".format(os.environ['greeting'])