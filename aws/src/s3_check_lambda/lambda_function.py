def lambda_function(event, context):
    product = event['product']
    print('product: ', product)
    
    # TODO: 一旦okで決め打ち。s3をcheckしてからstatus=ok or ngで分岐
    result = {
        'status': 'ok',
        'product': product
    }
    
    return result
