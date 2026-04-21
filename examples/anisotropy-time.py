# Copyright (c) 2024-2026 Magnon Compute Corporation. All Rights Reserved.

from mumax2 import *
from mumax2_material import *

setgridsize(128, 128, 1)
setcellsize(5e-9, 5e-9, 20e-9)

load('micromagnetism')
load('anisotropy/uniaxial')

sync()
