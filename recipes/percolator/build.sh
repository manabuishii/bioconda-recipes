cmake . -DXML_SUPPORT=OFF -DCMAKE_INSTALL_PREFIX=$PREFIX 
make
make install

cd src/converters
cmake . -DSERIALIZE="Boost" -DCMAKE_INSTALL_PREFIX=$PREFIX -DBOOST_INCLUDEDIR=$PREFIX/include/boost/ -DBOOST_LIBRARYDIR=$PREFIX/lib -DBOOST_ROOT=$PREFIX -DSQLITE3_INCLUDE_DIR=$PREFIX/include/ -DCMAKE_PREFIX_PATH=$PREFIX/lib
make -I$PREFIX/include/
make install