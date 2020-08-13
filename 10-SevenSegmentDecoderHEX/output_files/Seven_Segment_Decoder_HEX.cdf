/* Quartus Prime Version 19.1.0 Build 670 09/22/2019 SJ Standard Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("Y:/Desktop/FPGA/SevenSegmentDecoderHEX/output_files/") File("Seven_Segment_Decoder_HEX.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
