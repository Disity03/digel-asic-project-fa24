import matplotlib.pyplot as plt
import os

# Definišemo putanju do foldera sa fajlovima
folder_path = "waves"

# Lista fajlova koje želimo da obradimo
files = [
    "wave_off.txt",
    "wave_toggle.txt", "wave_pwm.txt", "wave_prn.txt",  
    "wave_rect.txt","wave_tri.txt", "wave_saw.txt", "wave_sine.txt"
]

# Podešavanje grafikona
fig, axes = plt.subplots(4, 2, figsize=(15, 12))
axes = axes.flatten()

# Obrada svakog fajla
for i, filename in enumerate(files):
    file_path = os.path.join(folder_path, filename)
    
    # Čitanje podataka iz fajla
    with open(file_path, 'r') as file:
        data = []
        for line in file:
            line = line.strip()
            data.append(float(line))
    
    # Crtanje grafikona
    axes[i].plot(data, 'b-', linewidth=1)
    axes[i].set_title(f'{filename}', fontsize=12, fontweight='bold')
    axes[i].set_xlabel('Uzorak')
    axes[i].set_ylabel('Vrednost')
    axes[i].grid(True, alpha=0.3)
    
    # Podešavanje y-osu za bolju preglednost
    if filename in ['wave_sine.txt', 'wave_rect.txt', 'wave_saw.txt', 'wave_tri.txt']:
        axes[i].set_ylim(min(data)-10, max(data)+10)

plt.tight_layout()
plt.show()
