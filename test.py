


def greet(greeting, name):
    return f'{greeting}, {name}!'


def say_hello(name):
    return greet("Hello", name)

def hello_world():
    return say_hello("World")


if __name__ == '__main__':
    return hello_world()
