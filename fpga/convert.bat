sed s/,simprim.vcomponents.all// mapped.vhdl > mapped_tmp.vhdl
sed s/,simprim// mapped_tmp.vhdl > mapped.vhdl
del mapped_tmp.vhdl
