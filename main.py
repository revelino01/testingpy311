import timeit


def bench():
    for x in range(1000000):
        a = x


if __name__ == "__main__":
    print(timeit.timeit('bench()', globals=globals(), number=1))
