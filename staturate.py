import os

from PIL import Image, ImageEnhance


def saturate_images_in_directory(directory_path):
    # Parcourt tous les fichiers dans le répertoire
    for filename in os.listdir(directory_path):
        if filename.endswith(".png"):
            # Chemin complet du fichier
            file_path = os.path.join(directory_path, filename)

            # Ouvrir l'image
            with Image.open(file_path) as img:
                # Convertir l'image en mode RGB si nécessaire
                if img.mode != "RGB":
                    img = img.convert("RGB")

                # Appliquer la saturation maximale
                enhancer = ImageEnhance.Color(img)
                saturated_img = enhancer.enhance(
                    3.0
                )  # 2.0 pour une saturation maximale

                # Enregistrer l'image modifiée
                saturated_img.save(file_path)
                print(f"Image saturée et sauvegardée: {file_path}")


# Remplacez 'votre_repertoire' par le chemin du répertoire contenant les images PNG
directory_path = "icons_copy/"
saturate_images_in_directory(directory_path)