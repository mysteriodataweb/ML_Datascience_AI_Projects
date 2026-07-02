import pandas as pd
from pandasgui import show


# Charger le fichier CSV avec un chemin absolu
import os
chemin_csv = os.path.join(os.path.dirname(__file__), "music_dataset_mod.csv")
df = pd.read_csv(chemin_csv)

# Lancer l'interface graphique interactive
show(df)
