
from NFTest import *

NUM_WRITES = 16

def config_tables():
    nftest_regwrite(0x44020050, 0x11111108)
    nftest_regwrite(0x44020054, 0x00000811)
    nftest_regwrite(0x44020080, 0x00000101)
    nftest_regwrite(0x44020040, 0x00000001)
    nftest_regwrite(0x44020050, 0x22222208)
    nftest_regwrite(0x44020054, 0x00000822)
    nftest_regwrite(0x44020080, 0x00000104)
    nftest_regwrite(0x44020040, 0x00000001)
    nftest_regwrite(0x44020050, 0x33333308)
    nftest_regwrite(0x44020054, 0x00000833)
    nftest_regwrite(0x44020080, 0x00000110)
    nftest_regwrite(0x44020040, 0x00000001)
    nftest_regwrite(0x44020050, 0x44444408)
    nftest_regwrite(0x44020054, 0x00000844)
    nftest_regwrite(0x44020080, 0x00000140)
    nftest_regwrite(0x44020040, 0x00000001)
