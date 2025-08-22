import ctypes
import os
import sys

class Plugin:
  def __init__(self) -> None:
    self.ts = None

  def init(self):
    try:
      if sys.platform == 'darwin':
        dll_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "libtree-sitter-python.dylib")
      elif sys.platform == 'win32':
        dll_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "tree-sitter-python.dll")
      elif sys.platform == 'linux':
        dll_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "libtree-sitter-python.so")
      self.ts = ctypes.CDLL(dll_path)
    except:
      pass

  def get_tree_sitter_language(self, lang_id:str):
    return None if self.ts is None else ctypes.cast(self.ts.tree_sitter_python, ctypes.c_void_p).value