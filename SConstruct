env = Environment()

env['ENV']['PATH'] = ['E:/Svd63/TDM-GCC-64/bin']
env['BUILDERS']['CustomCC'] = Builder(action='g++ -c -O2 -Wall -o$TARGET $SOURCE')
env['BUILDERS']['CustomLINK'] = Builder(action='g++ -o$TARGET $SOURCE')

try1o = env.CustomCC(['try1.o'], ['try1.cpp'])
env.Alias('try1o', try1o)

try1e = env.CustomLINK(['try1.exe'], ['try1.o'])
env.Alias('try1e', try1e)

env.Alias('try1', [try1o, try1e])

env.Alias('build', ['try1'])
Default('build')
