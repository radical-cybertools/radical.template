
def pytest_runtest_call (item) :
    print " ===> %s" % item

def pytest_collect_file (path, parent) :
    print " ---> %s / %s" % (path, parent)

