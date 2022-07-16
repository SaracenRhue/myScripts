import os
from os import system as cmd
from os import listdir as ls

print('Movie(0) or TV Show(1)?')
category = int(input())

path = '/mnt/user/Media'

if category == 0:
    path += '/Movies'
else: path += '/Serien'

items = ls(path)

for item in items:
    print(str(items.index(item)) + ') ' + item)

print('Wich one (index)?')
indexNr = int(input())

path += '/' + items[indexNr]

path = path.replace(' ', '\ ')

destination = '/mnt/user/resilio/Resilio\ Sync'

isFile = os.path.isfile(path)

if isFile:
    terminal =  'cp ' + path + ' ' + destination
else: terminal =  'cp -r ' + path + ' ' + destination

print('copying file(s)...')
cmd(terminal)
print('done!')
