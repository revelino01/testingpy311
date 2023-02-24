import timeit

def bench():
    for x in range(1000000):
        a = x

print(timeit.timeit('bench()',globals = globals(), number=1))