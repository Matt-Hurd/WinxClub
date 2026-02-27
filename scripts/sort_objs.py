import sys
import os
import re

def main():
    if len(sys.argv) < 2:
        return
    
    objs = sys.argv[1:]
    
    # Read the intended order from the scatter script
    order_dict = {}
    try:
        with open('scatter_script.txt', 'r') as f:
            idx = 0
            for line in f:
                # Look for things like "split_8000210.o" or "*split_801742C.o"
                match = re.search(r'\b([A-Za-z0-9_]+\.o)\b', line)
                if match:
                    basename = match.group(1)
                    if basename not in order_dict:
                        order_dict[basename] = idx
                        idx += 1
    except FileNotFoundError:
        pass
        
    def sort_key(obj_path):
        basename = os.path.basename(obj_path)
        if basename in order_dict:
            return (0, order_dict[basename])
        return (1, obj_path)

    objs.sort(key=sort_key)
    
    print(' '.join(objs))

if __name__ == '__main__':
    main()
