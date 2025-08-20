import os
import argparse

def delete_specific_files(root_dir, extensions=('.route', '.post_routing', '.echo', '.echo.blif', '.info', '.echo.dot', '.txt'  )):
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.endswith(extensions):
                file_path = os.path.join(dirpath, filename)
                try:
                    os.remove(file_path)
                    print(f"Deleted: {file_path}")
                except Exception as e:
                    print(f"Failed to delete {file_path}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Delete specific file types')
    parser.add_argument('-d', '--dir', type=str, default=os.path.dirname(os.path.abspath(__file__)),
                        help='Directory path to clean (default: script location)')
    args = parser.parse_args()

    print(f"Cleaning directory: {args.dir}")
    for dirpath, dirnames, _ in os.walk(args.dir):
        for dirname in dirnames:
            # print(f"Found subdirectory: {os.path.join(dirpath, dirname)}")
            delete_specific_files(os.path.join(dirpath, dirname))
            for inner_dirpath, inner_dirnames, _ in os.walk(os.path.join(dirpath, dirname)):
                for inner_dirname in inner_dirnames:
                    # print(f"Found inner subdirectory: {os.path.join(inner_dirpath, inner_dirname)}")
                    delete_specific_files(os.path.join(inner_dirpath, inner_dirname))
    