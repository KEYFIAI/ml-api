import sys
import time


def test():

    wallet_address = str(sys.argv[1])

    time.sleep(10)

    recommendation = [{'token': 'ICX', 'desirability': 0.95}, {'token': 'OMG', 'desirability': 0.93}, {'token': 'FRAX', 'desirability': 0.92}, {'token': 'USDP', 'desirability': 0.91}, {'token': 'DRT', 'desirability': 0.91}, {'token': 'NSFW', 'desirability': 0.91}, {'token': 'URAC', 'desirability': 0.88}, {'token': 'AVINOC', 'desirability': 0.88}, {'token': 'DFX', 'desirability': 0.88}, {'token': 'FYP', 'desirability': 0.88}]

    print(recommendation)

test()
