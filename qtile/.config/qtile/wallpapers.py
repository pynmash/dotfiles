from os import listdir, system
from random import choice


class Wallpapers:
    def __init__(self, paper_path):
        self.path = paper_path
        self.current_wallpaper = ""
        
    def get_wallpaper(self):
        self.files = [file for file in listdir(self.path)]
        self.current_wallpaper = choice(self.files)
        
    def set_wallapaper(self):
        system(f"feh --bg-scale '/home/dan/wallapers/{self.current_wallpaper}'")