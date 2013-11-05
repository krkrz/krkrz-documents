# dissolve f_SoundBuffer.xml.in

undef($/);

open FH, "f_SoundBuffer.xml.in";
$content = <FH>;

open FH, ">f_WaveSoundBuffer.xml";
$c = $content;
$c =~ s/<midi>.*?<\/midi>//gs;
$c =~ s/<cdda>.*?<\/cdda>//gs;
$c =~ s/<classname\/>/WaveSoundBuffer/gs;
print FH $c;


