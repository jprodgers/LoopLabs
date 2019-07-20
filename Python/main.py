import pyaudio
import keyboard
import threading
import sys
import mido
import timeit

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
        self.startRecording = False
        self.recordFinished = False
        self.shouldTerminate = False

    def record_and_play(self, index):
        while True:
            print ('Recording for Looper Thread %s' % index)

            data = self.stream.read(CHUNK, exception_on_overflow=False)
            self.frames.append(data)

            if not self.startRecording:
                self.stream.stop_stream()
                self.stream.close()
                self.p.terminate()
                break

        print ('Record Finished')
        self.loop_play()

    def loop_play(self):
        while True:
            if self.shouldTerminate:
                break

            a = AudioOutput()
            a.play(b''.join(self.frames))


if __name__ == "__main__":
    audioInput1 = AudioInput()
    audioInput2 = AudioInput()
    audioInput3 = AudioInput()
    audioInput4 = AudioInput()

    my_thread1 = threading.Thread(target=audioInput1.record_and_play, args=("1",))
    my_thread2 = threading.Thread(target=audioInput2.record_and_play, args=("2",))
    my_thread3 = threading.Thread(target=audioInput3.record_and_play, args=("3",))
    my_thread4 = threading.Thread(target=audioInput4.record_and_play, args=("4",))

    try:
        with mido.open_input(portname) as port:
            print('Using {}'.format(port))
            print('Waiting for messages...')
            msgDict = {}
            for message in port:
                msgDict = message.dict()

                if msgDict['type'] == 'note_on' and msgDict['note'] == 60 and not audioInput1.recordFinished:
                    audioInput1.startRecording = True
                    my_thread1.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 60 and not audioInput1.recordFinished:
                    audioInput1.startRecording = False
                    audioInput1.recordFinished = True
                elif msgDict['type'] == 'note_on' and msgDict['note'] == 60 and audioInput1.recordFinished:
                    audioInput1.shouldTerminate = True
                    audioInput1.recordFinished = False

                if msgDict['type'] == 'note_on' and msgDict['note'] == 61 and not audioInput2.recordFinished:
                    audioInput2.startRecording = True
                    my_thread2.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 61 and not audioInput2.recordFinished:
                    audioInput2.startRecording = False
                    audioInput2.recordFinished = True
                elif msgDict['type'] == 'note_on' and msgDict['note'] == 61 and audioInput2.recordFinished:
                    audioInput2.shouldTerminate = True
                    audioInput2.recordFinished = False

                if msgDict['type'] == 'note_on' and msgDict['note'] == 62 and not audioInput3.recordFinished:
                    audioInput3.startRecording = True
                    my_thread3.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 62 and not audioInput3.recordFinished:
                    audioInput3.startRecording = False
                    audioInput3.recordFinished = True
                elif msgDict['type'] == 'note_on' and msgDict['note'] == 62 and audioInput3.recordFinished:
                    audioInput3.shouldTerminate = True
                    audioInput3.recordFinished = False

                if msgDict['type'] == 'note_on' and msgDict['note'] == 63 and not audioInput4.recordFinished:
                    audioInput4.startRecording = True
                    my_thread4.start()
                elif msgDict['type'] == 'note_off' and msgDict['note'] == 63 and not audioInput4.recordFinished:
                    audioInput4.startRecording = False
                    audioInput4.recordFinished = True
                elif msgDict['type'] == 'note_on' and msgDict['note'] == 63 and audioInput4.recordFinished:
                    audioInput4.shouldTerminate = True
                    audioInput4.recordFinished = False

    except KeyboardInterrupt:
        pass
