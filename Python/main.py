import pyaudio
import keyboard
import threading
import sys
import mido

CHUNK = 1024
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 44100

# Uncomment the following to get the device info index

# info = p.get_host_api_info_by_index(0)
# numdevices = info.get('deviceCount')
# for i in range(0, numdevices):
#         if (p.get_device_info_by_host_api_device_index(0, i).get('maxInputChannels')) > 0:
#             print ("Input Device id ", i, " - ", p.get_device_info_by_host_api_device_index(0, i).get('name'))
#
#

if len(sys.argv) > 1:
    portname = sys.argv[1]
else:
    portname = None

print (portname)


class AudioOutput:
    def __init__(self):
        """ Init audio stream """
        self.p = pyaudio.PyAudio()
        self.stream = self.p.open(
            format=FORMAT,
            channels=CHANNELS,
            rate=RATE,
            output = True
        )

    def play(self, data):
        """ Play entire file """
        for i in range(0, len(data), CHUNK):
            self.stream.write(data[i:i+CHUNK])


class AudioInput:
    def __init__(self):
        """ Init Audio Input for Recording """
        self.p = pyaudio.PyAudio()
        self.stream = self.p.open(format=FORMAT,
                    channels=CHANNELS,
                    rate=RATE,
                    input=True,
                    input_device_index=3,
                    frames_per_buffer=CHUNK)
        self.frames = []
        self.startPlaying = False

    def record_and_play(self):
        while True:
            data = self.stream.read(CHUNK, exception_on_overflow=False)
            self.frames.append(data)

            if not self.startPlaying:
                self.stream.stop_stream()
                self.stream.close()
                self.p.terminate()
                break

        print ('Record Finished')
        self.loop_play()

    def loop_play(self):
        while True:
            a = AudioOutput()
            a.play(b''.join(self.frames))


if __name__ == "__main__":
    audioInput1 = AudioInput()
    audioInput2 = AudioInput()
    audioInput3 = AudioInput()
    audioInput4 = AudioInput()

    my_thread1 = threading.Thread(target=audioInput1.record_and_play)
    my_thread2 = threading.Thread(target=audioInput2.record_and_play)
    my_thread3 = threading.Thread(target=audioInput3.record_and_play)
    my_thread4 = threading.Thread(target=audioInput4.record_and_play)

    try:
        with mido.open_input(portname) as port:
            print('Using {}'.format(port))
            print('Waiting for messages...')
            msgDict = {}
            for message in port:
                msgDict = message.dict()

                if msgDict['type'] == 'note_on' and msgDict['note'] == 60:
                    audioInput1.startPlaying = True
                    my_thread1.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 60:
                    audioInput1.startPlaying = False

                if msgDict['type'] == 'note_on' and msgDict['note'] == 61:
                    audioInput2.startPlaying = True
                    my_thread2.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 61:
                    audioInput2.startPlaying = False

                if msgDict['type'] == 'note_on' and msgDict['note'] == 62:
                    audioInput3.startPlaying = True
                    my_thread3.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 62:
                    audioInput3.startPlaying = False

                if msgDict['type'] == 'note_on' and msgDict['note'] == 63:
                    audioInput4.startPlaying = True
                    my_thread4.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 63:
                    audioInput4.startPlaying = False

    except KeyboardInterrupt:
        pass
