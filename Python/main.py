import pyaudio
import wave
import keyboard
import threading

CHUNK = 1024
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 44100
WAVE_OUTPUT_FILENAME = "voice.wav"

# Uncomment the following to get the device info index

# info = p.get_host_api_info_by_index(0)
# numdevices = info.get('deviceCount')
# for i in range(0, numdevices):
#         if (p.get_device_info_by_host_api_device_index(0, i).get('maxInputChannels')) > 0:
#             print ("Input Device id ", i, " - ", p.get_device_info_by_host_api_device_index(0, i).get('name'))
#
#


p = pyaudio.PyAudio()


stream = p.open(format=FORMAT,
                channels=CHANNELS,
                rate=RATE,
                input=True,
                input_device_index=3,
                frames_per_buffer=CHUNK)

start_loop = False
frames = []


class AudioFile:
    def __init__(self):
        """ Init audio stream """
        # self.wf = wave.open(file, 'rb')
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


print ('Press Space to start Recording')
while not start_loop:
    if keyboard.is_pressed('space'):
        start_loop = True

while start_loop:
    print ('Recording')

    data = stream.read(CHUNK, exception_on_overflow=False)
    frames.append(data)

    if keyboard.is_pressed('esc'):
        stream.stop_stream()
        stream.close()
        p.terminate()
        star_loop = False
        break

print ('Record Finished')



def loop_play():
    while True:
        a = AudioFile()
        a.play(b''.join(frames))
        # a.close()

def play_audio():
    my_thread = threading.Thread(target=loop_play)
    my_thread.start()


play_audio()
