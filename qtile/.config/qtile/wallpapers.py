"""
    A qtile module to change to a random wallpaper each time the configuration is loaded, mostly on login.

    Requires 'feh' to be installed as this is the shell program used to set the wallpaper.
"""

from os import listdir, system
from random import choice


class Wallpapers:
    """
    """
    def __init__(self, paper_path: str):
        self.path: str = paper_path
        self.current_wallpaper: str = ""
        
    def get_wallpaper(self):
        self.files: list = [file for file in listdir(self.path)]
        self.current_wallpaper: str = choice(self.files)
        
    def set_wallpaper(self):
        system(f"feh --bg-scale '/home/dan/wallpapers/{self.current_wallpaper}'")
        
if __name__ == "__main__":
    path: str = input("Enter the path to the folder where the wallpapers are stored: ")
    if path == "":
        path: str = "/home/dan/wallapers/"
    wallpapers = Wallpapers(paper_path=path)
    wallpapers.get_wallpaper()
    wallpapers.set_wallapaper()