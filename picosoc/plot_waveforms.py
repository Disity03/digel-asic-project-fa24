#!/usr/bin/env python3
"""
Python script za crtanje talasnih oblika generisanih od strane Digel SoC-a.
Ova skripta citta tekstualne fajlove sa talasnim oblicima i kreira grafike.
"""

import numpy as np
import matplotlib.pyplot as plt
import os
import sys

def read_waveform_file(filename):
    """Čita talasni oblik iz tekstualnog fajla."""
    if not os.path.exists(filename):
        print(f"File {filename} not found!")
        return None
    
    data = []
    try:
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if line:
                    # Pokušavamo da čitamo kao hex ili decimal
                    if line.startswith('0x'):
                        value = int(line, 16)
                    else:
                        value = int(line)
                    data.append(value)
        return np.array(data)
    except Exception as e:
        print(f"Error reading {filename}: {e}")
        return None

def parse_uart_output(uart_log_file):
    """Parsira UART output i čuva talasne oblike u fajlove."""
    if not os.path.exists(uart_log_file):
        print(f"UART log file {uart_log_file} not found!")
        return
    
    print(f"Parsing UART output from {uart_log_file}...")
    
    current_file = None
    current_data = []
    sample_count = 0
    
    try:
        with open(uart_log_file, 'r') as f:
            for line in f:
                line = line.strip()
                
                # Detektuj početak fajla
                if line.startswith('FILE_START:'):
                    filename = line.split(':', 1)[1]
                    current_file = filename
                    current_data = []
                    print(f"Found file: {filename}")
                
                # Detektuj broj uzoraka
                elif line.startswith('SAMPLES:'):
                    sample_count = int(line.split(':', 1)[1])
                    print(f"Expected samples: {sample_count}")
                
                # Detektuj podatke (hex vrednosti)
                elif line.startswith('0x') and current_file:
                    try:
                        value = int(line, 16)
                        current_data.append(value)
                    except ValueError:
                        pass
                
                # Detektuj kraj fajla
                elif line.startswith('FILE_END:') and current_file:
                    if len(current_data) > 0:
                        # Kreiraj waveforms direktorijum ako ne postoji
                        os.makedirs('waveforms', exist_ok=True)
                        
                        # Sačuvaj fajl
                        filepath = os.path.join('waveforms', os.path.basename(current_file))
                        with open(filepath, 'w') as out_f:
                            for value in current_data:
                                out_f.write(f"0x{value:08x}\n")
                        
                        print(f"Saved {len(current_data)} samples to {filepath}")
                    
                    current_file = None
                    current_data = []
    
    except Exception as e:
        print(f"Error parsing UART log: {e}")

def simulate_uart_output():
    """Simuliše UART output za testiranje."""
    print("Simulating UART output for testing...")
    
    # Kreiraj test UART log
    test_log = """Digel SoC Wave Generator Test Starting...
Testing all wave generator modes and saving waveforms to files

=== Testing WAVE_OFF mode ===
Current mode: 0 (OFF), Output: 0x00000000
Parameters set: param1=0x00000000, param2=0x00000000

=== Saving 50 samples to waveforms/wave_off.txt ===
FILE_START:waveforms/wave_off.txt
SAMPLES:50
0x00000000
0x00000000
0x00000000
FILE_END:waveforms/wave_off.txt

=== Testing WAVE_TOGGLE mode ===
Current mode: 1 (TOGGLE), Output: 0x00000001
Parameters set: param1=0x0000000A, param2=0x00000000

=== Saving 100 samples to waveforms/wave_toggle.txt ===
FILE_START:waveforms/wave_toggle.txt
SAMPLES:100
0x00000001
0x00000000
0x00000001
0x00000000
0x00000001
FILE_END:waveforms/wave_toggle.txt
"""
    
    with open('uart_output.log', 'w') as f:
        f.write(test_log)
    
    print("Created test UART log: uart_output.log")
    parse_uart_output('uart_output.log')

def plot_waveform(data, title, filename, save_plot=True):
    """Kreira grafik talasnog oblika."""
    if data is None or len(data) == 0:
        print(f"No data to plot for {title}")
        return
    
    plt.figure(figsize=(12, 6))
    plt.plot(data, 'b-', linewidth=1)
    plt.title(title, fontsize=14, fontweight='bold')
    plt.xlabel('Sample Index')
    plt.ylabel('Amplitude')
    plt.grid(True, alpha=0.3)
    
    # Dodajemo informacije o podacima
    plt.text(0.02, 0.98, f'Samples: {len(data)}', 
             transform=plt.gca().transAxes, 
             verticalalignment='top',
             bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.8))
    
    plt.tight_layout()
    
    if save_plot:
        plot_filename = filename.replace('.txt', '.png')
        plt.savefig(plot_filename, dpi=150, bbox_inches='tight')
        print(f"Plot saved as {plot_filename}")
    
    plt.show()

def plot_all_waveforms():
    """Kreira grafike za sve talasne oblike."""
    
    waveforms = [
        ('wave_off.txt', 'Wave Generator - OFF Mode'),
        ('wave_toggle.txt', 'Wave Generator - Toggle Mode'),
        ('wave_pwm.txt', 'Wave Generator - PWM Mode'),
        ('wave_prn.txt', 'Wave Generator - Pseudo-Random Mode'),
        ('wave_rect.txt', 'Wave Generator - Rectangular Mode'),
        ('wave_tri.txt', 'Wave Generator - Triangular Mode'),
        ('wave_saw.txt', 'Wave Generator - Sawtooth Mode'),
        ('wave_sine.txt', 'Wave Generator - Sine Mode')
    ]
    
    print("Digel SoC Waveform Plotter")
    print("=" * 40)
    
    for filename, title in waveforms:
        print(f"\nProcessing {filename}...")
        data = read_waveform_file(filename)
        if data is not None:
            plot_waveform(data, title, filename)
        else:
            print(f"Skipping {filename} - no data available")
    
    print("\nAll waveforms processed!")

def create_comparison_plot():
    """Kreira poređenje svih talasnih oblika u jednom grafik."""
    
    waveforms = [
        ('wave_toggle.txt', 'Toggle'),
        ('wave_pwm.txt', 'PWM'),
        ('wave_prn.txt', 'PRN'),
        ('wave_rect.txt', 'Rectangular'),
        ('wave_tri.txt', 'Triangular'),
        ('wave_saw.txt', 'Sawtooth'),
        ('wave_sine.txt', 'Sine')
    ]
    
    plt.figure(figsize=(15, 10))
    
    for i, (filename, label) in enumerate(waveforms):
        data = read_waveform_file(filename)
        if data is not None and len(data) > 0:
            # Ograničavamo na prvih 100 uzoraka za preglednost
            plot_data = data[:100]
            plt.subplot(4, 2, i+1)
            plt.plot(plot_data, 'b-', linewidth=1)
            plt.title(f'{label} Waveform', fontweight='bold')
            plt.grid(True, alpha=0.3)
            plt.ylabel('Amplitude')
            if i >= 6:  # Poslednji red
                plt.xlabel('Sample Index')
    
    plt.tight_layout()
    plt.savefig('all_waveforms_comparison.png', dpi=150, bbox_inches='tight')
    print("Comparison plot saved as all_waveforms_comparison.png")
    plt.show()

def main():
    """Glavna funkcija."""
    if len(sys.argv) > 1:
        if sys.argv[1] == '--comparison':
            create_comparison_plot()
        elif sys.argv[1] == '--parse':
            # Parsiraj UART output
            uart_log = sys.argv[2] if len(sys.argv) > 2 else 'uart_output.log'
            parse_uart_output(uart_log)
            plot_all_waveforms()
        elif sys.argv[1] == '--simulate':
            # Simuliši UART output za testiranje
            simulate_uart_output()
            plot_all_waveforms()
        elif sys.argv[1] == '--help':
            print("Usage:")
            print("  python3 plot_waveforms.py                    # Plot all waveforms individually")
            print("  python3 plot_waveforms.py --comparison       # Create comparison plot")
            print("  python3 plot_waveforms.py --parse [log_file] # Parse UART log and plot")
            print("  python3 plot_waveforms.py --simulate         # Simulate UART output for testing")
            print("  python3 plot_waveforms.py --help             # Show this help")
        else:
            # Plot specific file
            filename = sys.argv[1]
            data = read_waveform_file(filename)
            if data is not None:
                title = f"Waveform from {filename}"
                plot_waveform(data, title, filename)
    else:
        # Default: plot all waveforms
        print("Digel SoC Waveform Plotter")
        print("=" * 40)
        print("Looking for waveform files in 'waveforms/' directory...")
        plot_all_waveforms()

if __name__ == "__main__":
    main()
