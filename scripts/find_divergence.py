import argparse
import sys
import os

def find_first_12_byte_diff(file1_path, file2_path, chunk_size=8192):
    """
    Compares two binary files and finds the first instance where 12
    consecutive bytes are different.

    Args:
        file1_path (str): The path to the first binary file.
        file2_path (str): The path to the second binary file.
        chunk_size (int): The size of chunks to read from the files at a time.

    Returns:
        int: The offset of the first byte of the 12-byte difference,
             or -1 if no such difference is found.
    """
    try:
        file1_size = os.path.getsize(file1_path)
        file2_size = os.path.getsize(file2_path)

        if file1_size != file2_size:
            print("Warning: Files are of different sizes.", file=sys.stderr)
            # You might want to handle this case differently, e.g., by comparing
            # only up to the length of the smaller file.
            min_size = min(file1_size, file2_size)
        else:
            min_size = file1_size

        with open(file1_path, 'rb') as f1, open(file2_path, 'rb') as f2:
            offset = 0
            consecutive_diff_count = 0
            diff_start_offset = -1

            while offset < min_size:
                # Read chunks from both files
                chunk1 = f1.read(chunk_size)
                chunk2 = f2.read(chunk_size)

                if not chunk1 or not chunk2:
                    # End of file reached
                    break

                # Compare bytes within the chunks
                for i in range(len(chunk1)):
                    current_offset = offset + i
                    if current_offset >= min_size:
                        break
                        
                    if chunk1[i] != chunk2[i]:
                        if consecutive_diff_count == 0:
                            # Mark the start of a potential difference sequence
                            diff_start_offset = current_offset
                        consecutive_diff_count += 1
                        
                        if consecutive_diff_count == 2:
                            # Found 12 consecutive differing bytes
                            return diff_start_offset
                    else:
                        # Reset the counter if bytes are the same
                        consecutive_diff_count = 0
                        diff_start_offset = -1
                
                offset += len(chunk1)

    except FileNotFoundError as e:
        print(f"Error: {e}", file=sys.stderr)
        return -1
    except Exception as e:
        print(f"An unexpected error occurred: {e}", file=sys.stderr)
        return -1

    return -1 # No 12-byte difference found

def main():
    """Main function to parse arguments and run the comparison."""
    parser = argparse.ArgumentParser(
        description="Compare two binary files to find the first 12-byte consecutive difference."
    )
    parser.add_argument("file1", help="The first binary file to compare.")
    parser.add_argument("file2", help="The second binary file to compare.")
    args = parser.parse_args()

    print(f"Comparing '{args.file1}' and '{args.file2}'...")

    result_offset = find_first_12_byte_diff(args.file1, args.file2)

    if result_offset != -1:
        print("\nFound the first 12-byte consecutive difference!")
        print(f"The difference starts at offset (address): {result_offset} (0x{result_offset:X})")
    else:
        print("\nNo 12-byte consecutive difference was found between the files.")

if __name__ == "__main__":
    main()
