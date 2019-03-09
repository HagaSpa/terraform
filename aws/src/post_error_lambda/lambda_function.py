def lambda_handler(event, context):
    print('error occured!: ', event['product'])
    return {
        'statusCode': 400
    }
