import os

from PIL import Image, ImageEnhance


def saturate_images_in_directory(file_path):
    with Image.open(file_path) as img:
        # Convertir l'image en mode RGB si nécessaire
        if img.mode != "RGB":
            img = img.convert("RGB")

        # Appliquer la saturation maximale
        enhancer = ImageEnhance.Color(img)
        saturated_img = enhancer.enhance(3.0)  # 2.0 pour une saturation maximale

        # Enregistrer l'image modifiée
        saturated_img.save(file_path)
        print(f"Image saturée et sauvegardée: {file_path}")


# Remplacez 'votre_repertoire' par le chemin du répertoire contenant les images PNG
FILE = "icons/python.png"
saturate_images_in_directory(FILE)
