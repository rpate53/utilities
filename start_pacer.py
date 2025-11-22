import argparse
from tqdm import tqdm
import time


def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('num_questions', help='number of questions', type=int)
    parser.add_argument('num_minutes', help='number of minutes to take exam', type=int)
    return parser.parse_args()

if __name__ == "__main__":
    args = get_args()
    num_questions = args.num_questions
    num_minutes = args.num_minutes
    
    pace = float(num_minutes/num_questions) * 60
    print(f'answer 1 question every {pace} seconds.\n')
    for i in tqdm(range(num_questions), unit="question"):
        time.sleep(pace)
