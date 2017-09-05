using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BingSpeechApp
{
    using System.Media;
    using System.Threading;
    using System.Windows.Threading;
    using CognitiveServicesTTS;
      using Microsoft.CognitiveServices.SpeechRecognition;
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private MicrophoneRecognitionClient micClient;
        public MainWindow()
        {
            InitializeComponent();
            this.micClient = SpeechRecognitionServiceFactory.CreateMicrophoneClient(
                SpeechRecognitionMode.ShortPhrase,
                "en-US",
                "Your_Key_Here");
            this.micClient.OnMicrophoneStatus += MicClient_OnMicrophoneStatus;
            this.micClient.OnResponseReceived += MicClient_OnResponseReceived;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {         
            this.MySpeechResponse.Text = string.Empty;
            this.MySpeechResponseConfidence.Text = string.Empty;
            this.micClient.StartMicAndRecognition();
        }

        private void MicClient_OnMicrophoneStatus(object sender, MicrophoneEventArgs e)
        {
            Application.Current.Dispatcher.BeginInvoke(
                DispatcherPriority.Normal,
                new Action(
                    () =>
                    {
                        if (e.Recording)
                        {
                            this.status.Text = "Listening";
                            this.RecordingBar.Visibility = Visibility.Visible;
                        }
                        else
                        {
                            this.status.Text = "Not Listening";
                            this.RecordingBar.Visibility = Visibility.Collapsed;
                        }
                    }));
        }

        private async void MicClient_OnResponseReceived(object sender, SpeechResponseEventArgs e)
        {
            if (e.PhraseResponse.Results.Length > 0)
            {
                await Application.Current.Dispatcher.BeginInvoke(
                    DispatcherPriority.Normal, new Action(() =>
                    {
                        this.MySpeechResponse.Text = $"'{e.PhraseResponse.Results[0].DisplayText}',";
                        this.MySpeechResponseConfidence.Text = $"confidence: { e.PhraseResponse.Results[0].Confidence}";
                        
                        //this.Speak(this.MySpeechResponse.Text);
                    }));
            }
        }

        //private async Task Speak(string speech)
        //{
        //    string accessToken;

        //    Authentication auth = new Authentication("Your-KEY-HERE");
        //    accessToken = auth.GetAccessToken();
        //    string uri = "https://speech.platform.bing.com/synthesize";
        //    var speaker = new Synthesize();

        //    speaker.OnAudioAvailable += Speaker_OnAudioAvailable;
        //    var options = new Synthesize.InputOptions
        //    {
        //        RequestUri = new Uri(uri),
        //        Text = speech,
        //        VoiceType = Gender.Female,
        //        Locale = "en-US",
        //        VoiceName = "Microsoft Server Speech Text to Speech Voice (en-US, ZiraRUS)",
        //        OutputFormat = AudioOutputFormat.Riff16Khz16BitMonoPcm,
        //        AuthorizationToken = "Bearer " + accessToken
        //    };
        //    await speaker.Speak(CancellationToken.None, options);
        //}

        //private void Speaker_OnAudioAvailable(object sender, GenericEventArgs<System.IO.Stream> e)
        //{
        //    SoundPlayer player = new SoundPlayer(e.EventData);
        //    player.PlaySync();
        //    e.EventData.Dispose();
        //}
    }
}
