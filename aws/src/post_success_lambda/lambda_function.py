def lambda_function(event, context):
    print('product: ', event['product'])
    print('called me!')
    
    return {
        'statusCode': 200
    }
