# (c) 2020 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement
# available at http://aws.amazon.com/agreement or other written agreement between
# Customer and Amazon Web Services, Inc.

import os
import json
import ast

reportsdir = os.environ.get('PWD')+'/reports/'
cfnnag_l = list()


if __name__ == "__main__":
    try:
        for filename in os.listdir(reportsdir):
            f = open(reportsdir + filename, "r")
            text = f.read()
            f.close()
            cfnnag_d = json.loads(text)[0]
            cfnnag_d = ast.literal_eval(json.dumps(cfnnag_d))

            # If cfn nag results show no violations don't save them
            if cfnnag_d['file_results']['violations']:
                cfnnag_l.append(cfnnag_d)

        # print(cfnnag_l)
        f = open('/tmp/cfnnag_results.json', "w")
        f.write(str(cfnnag_l))
    except Exception as e:
        print(e)
