onerror {resume}
quietly virtual signal -install /test/top_0 { (context /test/top_0 )(\data[0]_net_1\ & \data[1]_net_1\ & \data[2]_net_1\ & \data[3]_net_1\ & \data[4]_net_1\ & \data[5]_net_1\ & \data[6]_net_1\ & \data[7]_net_1\ )} data
quietly virtual signal -install /test/top_0 { (context /test/top_0 )(\burstNo[0]_net_1\ & \burstNo[1]_net_1\ & \burstNo[3]_net_1\ & \burstNo[4]_net_1\ & \burstNo[5]_net_1\ & \burstNo[6]_net_1\ & \burstNo[7]_net_1\ & \burstNo[8]_net_1\ & \burstNo[9]_net_1\ & \burstNo[10]_net_1\ & \burstNo[11]_net_1\ & \burstNo[12]_net_1\ & \burstNo[13]_net_1\ & \burstNo[14]_net_1\ & \burstNo[15]_net_1\ & \burstNo[16]_net_1\ & \burstNo[17]_net_1\ & \burstNo[18]_net_1\ & \burstNo[19]_net_1\ & \burstNo[20]_net_1\ & \burstNo[21]_net_1\ & \burstNo[22]_net_1\ & \burstNo[23]_net_1\ & \burstNo[24]_net_1\ & \burstNo[25]_net_1\ & \burstNo[26]_net_1\ & \burstNo[27]_net_1\ & \burstNo[28]_net_1\ & \burstNo[29]_net_1\ & \burstNo[30]_net_1\ & \burstNo[31]_net_1\ )} burstNo
quietly virtual signal -install /test/top_0 { (concat_range (0 to 30) )( (context /test/top_0 )(\burstNo[0]_net_1\ & \burstNo[1]_net_1\ & \burstNo[3]_net_1\ & \burstNo[4]_net_1\ & \burstNo[5]_net_1\ & \burstNo[6]_net_1\ & \burstNo[7]_net_1\ & \burstNo[8]_net_1\ & \burstNo[9]_net_1\ & \burstNo[10]_net_1\ & \burstNo[11]_net_1\ & \burstNo[12]_net_1\ & \burstNo[13]_net_1\ & \burstNo[14]_net_1\ & \burstNo[15]_net_1\ & \burstNo[16]_net_1\ & \burstNo[17]_net_1\ & \burstNo[18]_net_1\ & \burstNo[19]_net_1\ & \burstNo[20]_net_1\ & \burstNo[21]_net_1\ & \burstNo[22]_net_1\ & \burstNo[23]_net_1\ & \burstNo[24]_net_1\ & \burstNo[25]_net_1\ & \burstNo[26]_net_1\ & \burstNo[27]_net_1\ & \burstNo[28]_net_1\ & \burstNo[29]_net_1\ & \burstNo[30]_net_1\ & \burstNo[31]_net_1\ ) )} burstNo001
quietly virtual signal -install /test/top_0 { (context /test/top_0 )(\burstNo[31]_net_1\ & \burstNo[30]_net_1\ & \burstNo[29]_net_1\ & \burstNo[28]_net_1\ & \burstNo[27]_net_1\ & \burstNo[26]_net_1\ & \burstNo[25]_net_1\ & \burstNo[24]_net_1\ & \burstNo[23]_net_1\ & \burstNo[22]_net_1\ & \burstNo[21]_net_1\ & \burstNo[20]_net_1\ & \burstNo[19]_net_1\ & \burstNo[18]_net_1\ & \burstNo[17]_net_1\ & \burstNo[16]_net_1\ & \burstNo[15]_net_1\ & \burstNo[14]_net_1\ & \burstNo[13]_net_1\ & \burstNo[12]_net_1\ & \burstNo[11]_net_1\ & \burstNo[10]_net_1\ & \burstNo[9]_net_1\ & \burstNo[8]_net_1\ & \burstNo[7]_net_1\ & \burstNo[6]_net_1\ & \burstNo[5]_net_1\ & \burstNo[4]_net_1\ & \burstNo[3]_net_1\ & \burstNo[1]_net_1\ & \burstNo[0]_net_1\ )} burstNo002
quietly virtual signal -install /test/top_0 { (context /test/top_0 )(\bytecount[6]_net_1\ & \bytecount[5]_net_1\ & \bytecount[4]_net_1\ & \bytecount[3]_net_1\ & \bytecount[2]_net_1\ & \bytecount[1]_net_1\ & \bytecount[0]_net_1\ )} byteCount
quietly virtual signal -install /test/top_0 { (context /test/top_0 )(\data[7]_net_1\ & \data[6]_net_1\ & \data[5]_net_1\ & \data[4]_net_1\ & \data[3]_net_1\ & \data[2]_net_1\ & \data[1]_net_1\ & \data[0]_net_1\ )} data001
quietly WaveActivateNextPane {} 0
add wave -noupdate /test/SYSCLK
add wave -noupdate /test/NSYSRESET
add wave -noupdate /test/top_0/sda
add wave -noupdate /test/top_0/scl
add wave -noupdate /test/top_0/sda2
add wave -noupdate /test/top_0/scl2
add wave -noupdate /test/top_0/burstNo002
add wave -noupdate -radix decimal /test/top_0/byteCount
add wave -noupdate -radix hexadecimal /test/top_0/data001
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8322055371 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 173
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {7063089502 ps} {8446596990 ps}
