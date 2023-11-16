import fire
import os

class Main:
    def __init__(self) -> None:
        pass

    def hello(self):
        output_directory = 'output/'
        os.makedirs(output_directory, exist_ok=True)
        with open(os.path.join(output_directory, 'test.txt'), 'w') as file:
            file.write('Hello')

if __name__  == "__main__":
    fire.Fire(Main)
