# so the lib can be found when the test is run
export LD_LIBRARY_PATH=./:$LD_LIBRARY_PATH
# alternatively put the .so generated after running make someplace where the system will find it