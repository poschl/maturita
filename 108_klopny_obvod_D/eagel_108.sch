<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="74ttl-din">
<description>&lt;b&gt;TTL Devices with DIN Symbols&lt;/b&gt;&lt;p&gt;
CadSoft and the author do not warrant that this library is free from error
or will meet your specific requirements.&lt;p&gt;
&lt;author&gt;Created by Holger Bettenbühl, hol.bet.@rhein-main.net&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="+UB">
<circle x="0" y="-0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.524" layer="95">&gt;NAME</text>
<pin name="+UB" x="0" y="2.54" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-UB">
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0" layer="94"/>
<circle x="0" y="0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="0" size="1.524" layer="95">&gt;NAME</text>
<pin name="-UB" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="74">
<wire x1="-5.08" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-7.62" y2="8.89" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="8.89" x2="-7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-7.62" y2="-6.35" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-6.35" x2="-7.62" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="5.08" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="3.5306" x2="-3.0988" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.0988" y1="2.54" x2="-5.08" y2="1.5494" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-3.81" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="7.62" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-5.08" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-5.08" y2="-7.62" width="0.1524" layer="94"/>
<text x="-5.08" y="-13.335" size="2.032" layer="96">&gt;VALUE</text>
<text x="-5.08" y="10.795" size="2.032" layer="95">&gt;NAME</text>
<text x="-3.81" y="6.35" size="2.032" layer="94">S</text>
<text x="-1.905" y="1.27" size="2.032" layer="94">C</text>
<text x="-3.81" y="-3.81" size="2.032" layer="94">D</text>
<text x="-3.81" y="-8.89" size="2.032" layer="94">R</text>
<pin name="CLK" x="-10.16" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="!PRE" x="-10.16" y="7.62" visible="pad" length="short" direction="in"/>
<pin name="Q" x="10.16" y="5.08" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="!CLR" x="-10.16" y="-7.62" visible="pad" length="short" direction="in"/>
<pin name="D" x="-10.16" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="!Q" x="10.16" y="-5.08" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="00">
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="1.27" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="5.08" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<text x="-5.08" y="5.715" size="2.032" layer="95">&gt;NAME</text>
<text x="-5.08" y="-8.255" size="2.032" layer="96">&gt;VALUE</text>
<text x="-0.635" y="1.905" size="2.032" layer="94">&amp;</text>
<pin name="A" x="-10.16" y="2.54" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="B" x="-10.16" y="-2.54" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="Y" x="10.16" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="10">
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="1.27" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="5.08" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="-5.08" y="8.255" size="2.032" layer="95">&gt;NAME</text>
<text x="-5.08" y="-10.795" size="2.032" layer="96">&gt;VALUE</text>
<text x="-0.635" y="4.445" size="2.032" layer="94">&amp;</text>
<pin name="A" x="-10.16" y="5.08" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="B" x="-10.16" y="0" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="Y" x="10.16" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="C" x="-10.16" y="-5.08" visible="pad" length="short" direction="in" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*74" prefix="V">
<description>Dual D type positive edge triggered &lt;b&gt;FLIP FLOP&lt;/b&gt;, preset and clear</description>
<gates>
<gate name="/+UB" symbol="+UB" x="15.24" y="5.08" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="15.24" y="-5.08" addlevel="request"/>
<gate name="/1" symbol="74" x="0" y="0" swaplevel="1"/>
<gate name="/2" symbol="74" x="-25.4" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="/+UB" pin="+UB" pad="14"/>
<connect gate="/-UB" pin="-UB" pad="7"/>
<connect gate="/1" pin="!CLR" pad="1"/>
<connect gate="/1" pin="!PRE" pad="4"/>
<connect gate="/1" pin="!Q" pad="6"/>
<connect gate="/1" pin="CLK" pad="3"/>
<connect gate="/1" pin="D" pad="2"/>
<connect gate="/1" pin="Q" pad="5"/>
<connect gate="/2" pin="!CLR" pad="13"/>
<connect gate="/2" pin="!PRE" pad="10"/>
<connect gate="/2" pin="!Q" pad="8"/>
<connect gate="/2" pin="CLK" pad="11"/>
<connect gate="/2" pin="D" pad="12"/>
<connect gate="/2" pin="Q" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*00" prefix="V">
<description>Quad 2-input &lt;b&gt;NAND&lt;/b&gt; gate</description>
<gates>
<gate name="/+UB" symbol="+UB" x="15.24" y="12.7" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="15.24" y="5.08" addlevel="request"/>
<gate name="/1" symbol="00" x="0" y="0" swaplevel="1"/>
<gate name="/2" symbol="00" x="0" y="17.78" swaplevel="1"/>
<gate name="/3" symbol="00" x="-22.86" y="0" swaplevel="1"/>
<gate name="/4" symbol="00" x="-22.86" y="17.78" swaplevel="1"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="/+UB" pin="+UB" pad="14"/>
<connect gate="/-UB" pin="-UB" pad="7"/>
<connect gate="/1" pin="A" pad="1"/>
<connect gate="/1" pin="B" pad="2"/>
<connect gate="/1" pin="Y" pad="3"/>
<connect gate="/2" pin="A" pad="4"/>
<connect gate="/2" pin="B" pad="5"/>
<connect gate="/2" pin="Y" pad="6"/>
<connect gate="/3" pin="A" pad="9"/>
<connect gate="/3" pin="B" pad="10"/>
<connect gate="/3" pin="Y" pad="8"/>
<connect gate="/4" pin="A" pad="12"/>
<connect gate="/4" pin="B" pad="13"/>
<connect gate="/4" pin="Y" pad="11"/>
</connects>
<technologies>
<technology name=""/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*10" prefix="V">
<description>Triple 3-input &lt;b&gt;NAND&lt;/b&gt; gate</description>
<gates>
<gate name="/+UB" symbol="+UB" x="12.7" y="17.78" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="12.7" y="5.08" addlevel="request"/>
<gate name="/1" symbol="10" x="0" y="0" swaplevel="1"/>
<gate name="/2" symbol="10" x="0" y="22.86" swaplevel="1"/>
<gate name="/3" symbol="10" x="-22.86" y="10.16" swaplevel="1"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="/+UB" pin="+UB" pad="14"/>
<connect gate="/-UB" pin="-UB" pad="7"/>
<connect gate="/1" pin="A" pad="1"/>
<connect gate="/1" pin="B" pad="2"/>
<connect gate="/1" pin="C" pad="13"/>
<connect gate="/1" pin="Y" pad="12"/>
<connect gate="/2" pin="A" pad="3"/>
<connect gate="/2" pin="B" pad="4"/>
<connect gate="/2" pin="C" pad="5"/>
<connect gate="/2" pin="Y" pad="6"/>
<connect gate="/3" pin="A" pad="9"/>
<connect gate="/3" pin="B" pad="10"/>
<connect gate="/3" pin="C" pad="11"/>
<connect gate="/3" pin="Y" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="V1" library="74ttl-din" deviceset="74*74" device="N"/>
<part name="V2" library="74ttl-din" deviceset="74*74" device="N"/>
<part name="V3" library="74ttl-din" deviceset="74*00" device="N"/>
<part name="V4" library="74ttl-din" deviceset="74*10" device="N"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-132.08" y="129.54" size="1.778" layer="91">A</text>
<text x="-76.2" y="129.54" size="1.778" layer="91">B</text>
<text x="-17.78" y="129.54" size="1.778" layer="91">C</text>
<text x="-208.28" y="139.7" size="1.778" layer="91">CLK</text>
</plain>
<instances>
<instance part="V1" gate="/1" x="-144.78" y="86.36"/>
<instance part="V1" gate="/2" x="-88.9" y="86.36"/>
<instance part="V2" gate="/1" x="-35.56" y="86.36"/>
<instance part="V3" gate="/1" x="-177.8" y="93.98"/>
<instance part="V3" gate="/2" x="-114.3" y="45.72"/>
<instance part="V3" gate="/3" x="-114.3" y="20.32"/>
<instance part="V4" gate="/1" x="-55.88" y="-7.62"/>
<instance part="V4" gate="/2" x="-58.42" y="20.32"/>
<instance part="V3" gate="/4" x="-114.3" y="-5.08"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="-165.1" y1="114.3" x2="-208.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-208.28" y1="114.3" x2="-208.28" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="V3" gate="/4" pin="A"/>
<wire x1="-208.28" y1="-2.54" x2="-124.46" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="-198.12" y1="96.52" x2="-198.12" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-198.12" y1="96.52" x2="-185.42" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-198.12" y1="104.14" x2="-132.08" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="104.14" x2="-132.08" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="104.14" x2="-132.08" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="127" x2="-132.08" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="114.3" x2="-170.18" y2="114.3" width="0.1524" layer="91"/>
<junction x="-132.08" y="114.3"/>
<wire x1="-137.16" y1="91.44" x2="-132.08" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="91.44" x2="-132.08" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="104.14" x2="-167.64" y2="104.14" width="0.1524" layer="91"/>
<junction x="-132.08" y="104.14"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="-193.04" y1="96.52" x2="-187.96" y2="96.52" width="0.1524" layer="91"/>
<pinref part="V3" gate="/1" pin="A"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-81.28" y1="91.44" x2="-76.2" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="91.44" x2="-76.2" y2="109.22" width="0.1524" layer="91"/>
<pinref part="V3" gate="/1" pin="B"/>
<wire x1="-76.2" y1="109.22" x2="-76.2" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="114.3" x2="-76.2" y2="127" width="0.1524" layer="91"/>
<wire x1="-187.96" y1="91.44" x2="-203.2" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-203.2" y1="91.44" x2="-203.2" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-203.2" y1="109.22" x2="-76.2" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="91.44" x2="-17.78" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="91.44" x2="-17.78" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="109.22" x2="-17.78" y2="127" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="109.22" x2="-17.78" y2="109.22" width="0.1524" layer="91"/>
<junction x="-17.78" y="109.22"/>
<wire x1="-76.2" y1="114.3" x2="-129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="114.3" x2="-129.54" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="48.26" x2="-129.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="17.78" x2="-129.54" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="7.62" x2="-86.36" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="7.62" x2="-86.36" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="-7.62" x2="-68.58" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-7.62" x2="-60.96" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="17.78" x2="-121.92" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="48.26" x2="-121.92" y2="48.26" width="0.1524" layer="91"/>
<junction x="-129.54" y="48.26"/>
<junction x="-129.54" y="17.78"/>
<junction x="-76.2" y="114.3"/>
<wire x1="-68.58" y1="-7.62" x2="-68.58" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-12.7" x2="-63.5" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-68.58" y="-7.62"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="V1" gate="/2" pin="!Q"/>
<wire x1="-78.74" y1="81.28" x2="-76.2" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="81.28" x2="-76.2" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="-22.86" x2="-129.54" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="-22.86" x2="-129.54" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="-7.62" x2="-121.92" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="V1" gate="/1" pin="!Q"/>
<wire x1="-134.62" y1="81.28" x2="-134.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="43.18" x2="-121.92" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="V2" gate="/1" pin="!Q"/>
<wire x1="-25.4" y1="81.28" x2="-17.78" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="81.28" x2="-17.78" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="7.62" x2="-68.58" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="7.62" x2="-68.58" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-2.54" x2="-60.96" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="V3" gate="/2" pin="Y"/>
<wire x1="-104.14" y1="45.72" x2="-104.14" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="33.02" x2="-127" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-127" y1="33.02" x2="-127" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-127" y1="22.86" x2="-119.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="22.86" x2="-119.38" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="33.02" x2="-93.98" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="33.02" x2="-93.98" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="25.4" x2="-63.5" y2="25.4" width="0.1524" layer="91"/>
<junction x="-104.14" y="33.02"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="V3" gate="/3" pin="Y"/>
<wire x1="-104.14" y1="20.32" x2="-101.6" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="20.32" x2="-101.6" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="83.82" x2="-96.52" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="V3" gate="/1" pin="Y"/>
<wire x1="-167.64" y1="93.98" x2="-162.56" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-162.56" y1="93.98" x2="-162.56" y2="83.82" width="0.1524" layer="91"/>
<pinref part="V1" gate="/1" pin="D"/>
<wire x1="-162.56" y1="83.82" x2="-154.94" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="V3" gate="/4" pin="Y"/>
<wire x1="-104.14" y1="-5.08" x2="-93.98" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-5.08" x2="-93.98" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="20.32" x2="-68.58" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="V4" gate="/1" pin="Y"/>
<wire x1="-45.72" y1="-7.62" x2="-45.72" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-22.86" x2="-73.66" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-22.86" x2="-73.66" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="15.24" x2="-66.04" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="-50.8" y1="20.32" x2="-48.26" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="20.32" x2="-48.26" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="83.82" x2="-40.64" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="V1" gate="/1" pin="CLK"/>
<wire x1="-154.94" y1="88.9" x2="-157.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="88.9" x2="-157.48" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="139.7" x2="-101.6" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="139.7" x2="-101.6" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="88.9" x2="-96.52" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="139.7" x2="-48.26" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="139.7" x2="-48.26" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="88.9" x2="-43.18" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="139.7" x2="-203.2" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
