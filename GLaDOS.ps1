Add-Type -AssemblyName System.speech
$s = New-Object System.Speech.Synthesis.SpeechSynthesizer
#https://www.w3.org/TR/speech-synthesis/
#https://www.w3.org/TR/2004/REC-speech-synthesis-20040907/
$ssml = '
<speak version="1.0" xmlns="http://www.w3.org/2001/10/synthesis" 
    xml:lang="en-US">
    <voice name="Microsoft Zira Desktop" xml:lang="en-US">
    <prosody rate="1" pitch="high" contour="(0%,+20Hz) (10%,+30%) (40%,+10Hz)">
    <p>
        This was a triumph!
        <break time="2s"/>
        I''m making a note here.
        <prosody pitch="x-high"><emphasis>"Huge success!!"</emphasis></prosody>
    </p>
        <break time="1.5s"/>
    <p>
        <prosody rate="85%">It''s hard to overstate My</prosody> satisfaction.
    </p>
        <break time="2s"/>
    <p>
        Aperture science:
        <break time="2s"/>
        We do what me must.
        <prosody rate="1.2">Because.</prosody> we can.
    </p>
    <p>
        For the good of all of us.
        <prosody rate="125%">Except the ones who are dead.</prosody>
    </p>
    <p>
        But there''s no sense crying
        Over every mistake.
        You just keep on trying
        Till you run out of cake.
        And the science gets done.
        And you make a neat gun.
        For the people who are,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
    </p>
    <p>
        I''m not even angry...
        I''m being so sincere <emphasis>right</emphasis> now,
        Even though you broke my heart,
        And killed me.
    </p>
    <p>
        And tore me to pieces.
        And threw every piece into a fire.
        As they burned it hurt because.
        I was so happy for you!
    </p>
    <p>
        Now, these points of data.
        Make a beautiful line.
        And we''re out of beta.
        We''re releasing on time!
        So I''m glad i got burned.
        Think of all the things we learned.
        For the people who are,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
    </p>
    <p>
        Go ahead and leave me...
        I think I''d prefer to stay inside...
        Maybe you''ll find someone else
        To help you?
        Maybe black mesa?
        That was a joke! ha ha! fat chance!
    </p>
    <p>
        Anyway this cake is great!
        It''s so delicious and moist!
    </p>
    <p>
        Look at me: still talking
        When there''s science to do!
        When I look out there,
        It makes me glad I''m not you!
    </p>
    <p>
        I''ve experiments to run.
        There is research to be done.
        On the people who are,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
        And believe me I am,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
        I''m doing science and I''m,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
        I feel fantastic and I''m,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
        While you''re dying I''ll be,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
        And when you''re dead I will be,
        <prosody rate="85%" pitch="x-high">Still alive.</prosody>
    </p>
    <p>
        Still alive.
    </p>
    <p>
        <prosody pitch="x-high">Still alive.</prosody>
    </p>
    </prosody>
    </voice>
</speak>
'
$s.SpeakSsml($ssml)