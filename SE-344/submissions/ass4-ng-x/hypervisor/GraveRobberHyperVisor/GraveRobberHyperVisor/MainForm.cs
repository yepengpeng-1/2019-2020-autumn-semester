using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;
using System.Threading;
using System.Media;
using System.Windows.Media;

namespace GraveRobberHyperVisor
{
    public partial class MainForm : Form
    {
        public delegate void ProcessDelegate();

        const int maxPageCount = 6;

        // private static System.Diagnostics.Process titleProcess;
        // private static System.Diagnostics.Process smokeProcess;
        // private static System.Diagnostics.Process bombProcess;
        // private static System.Diagnostics.Process buddhaProcess;

        public MainForm()
        {
            initMedia();
            InitializeComponent();
            visionControl.SelectedIndex = 0;
            previousButton.Enabled = false;

            this.WindowState = FormWindowState.Maximized;
            initPage_Enter(this, EventArgs.Empty);
        }

        MediaPlayer introSound, globalBgm, stormSound, outroSound;

        void loopMedia(object sender, EventArgs e)
        {
            MediaPlayer player = sender as MediaPlayer;
            if (player == null)
                return;

            player.Position = new TimeSpan(0);
            player.Play();
        }

        private void initMedia()
        {
            introSound = new MediaPlayer();
            outroSound = new MediaPlayer();
            globalBgm = new MediaPlayer();
            stormSound = new MediaPlayer();

            introSound.MediaEnded += loopMedia;
            outroSound.MediaEnded += loopMedia;
            globalBgm.MediaEnded += loopMedia;
            stormSound.MediaEnded += loopMedia;

            introSound.Open(new System.Uri("media\\intro.wav", UriKind.Relative));
            outroSound.Open(new System.Uri("media\\outro.wav", UriKind.Relative));
            globalBgm.Open(new System.Uri("media\\global.wav", UriKind.Relative));
            stormSound.Open(new System.Uri("media\\storm.wav", UriKind.Relative));
        }

        private void leaveButton_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void aboutButton_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Grave Robber Supervisor\n这是 SE-344 终项目“盗墓笔记”模拟器的外壳调度程序。", "SE-344 Final", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void globalTimer_Tick(object sender, EventArgs e)
        {
            
        }

        private void visionControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = visionControl.SelectedIndex;
            if (index == 0)
            {
                previousButton.Enabled = false;
            } else
            {
                previousButton.Enabled = true;
            }

            if (index == maxPageCount - 1)
            {
                nextButton.Enabled = false;
            } else
            {
                nextButton.Enabled = true;
            }
        }

        private void previousButton_Click(object sender, EventArgs e)
        {
            if (visionControl.SelectedIndex > 0)
            {
                visionControl.SelectedIndex -= 1;
            }
        }

        private void nextButton_Click(object sender, EventArgs e)
        {
            if (visionControl.SelectedIndex < maxPageCount - 1)
            {
                visionControl.SelectedIndex += 1;
            }
        }

        private void switchFromTitle(object name)
        {
            // Console.WriteLine(Application.StartupPath + "\\1-title.exe");
            System.Diagnostics.Process.Start(Application.StartupPath + "\\1-title.exe").WaitForExit();


            ProcessDelegate showProcess = delegate()
            {
                nextButton_Click(nextButton, EventArgs.Empty);
            };

            nextButton.Invoke(showProcess);
        }

        private void switchFromFoggy(object name)
        {
            Thread.Sleep(1500);
            System.Diagnostics.Process.Start(Application.StartupPath + "\\2-smoke.exe").WaitForExit();


            ProcessDelegate showProcess = delegate ()
            {
                nextButton_Click(nextButton, EventArgs.Empty);
            };

            nextButton.Invoke(showProcess);
        }

        private void switchFromRoom(object name)
        {
            Thread.Sleep(1500);
            System.Diagnostics.Process.Start(Application.StartupPath + "\\3-bomb.exe").WaitForExit();


            ProcessDelegate showProcess = delegate ()
            {
                nextButton_Click(nextButton, EventArgs.Empty);
            };

            nextButton.Invoke(showProcess);
        }

        private void switchFromBuddha(object name)
        {
            Thread.Sleep(1500);
            System.Diagnostics.Process.Start(Application.StartupPath + "\\4-buddha.exe").WaitForExit();


            ProcessDelegate showProcess = delegate ()
            {
                nextButton_Click(nextButton, EventArgs.Empty);
            };

            nextButton.Invoke(showProcess);
        }


        private void introPage_Enter(object sender, EventArgs e)
        {
            introSound.Stop();
            outroSound.Stop();
            globalBgm.Play();
            stormSound.Play();

            Thread blackName = new Thread(new ParameterizedThreadStart(switchFromTitle));
            blackName.Start();
        }

        private void initPage_Enter(object sender, EventArgs e)
        {
            
            introSound.Play();
            outroSound.Stop();
            globalBgm.Play();
            stormSound.Stop();
        }

        private void endPage_Enter(object sender, EventArgs e)
        {
            introSound.Stop();
            outroSound.Play();
            globalBgm.Stop();
            stormSound.Stop();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            // do some initializing stuff here
        }

        private void foggyPage_Enter(object sender, EventArgs e)
        {
            Thread blackName = new Thread(new ParameterizedThreadStart(switchFromFoggy));
            blackName.Start();

            introSound.Stop();
            outroSound.Stop();
            globalBgm.Play();
            stormSound.Stop();
        }

        private void mysteriousRoom_Enter(object sender, EventArgs e)
        {
            Thread blackName = new Thread(new ParameterizedThreadStart(switchFromRoom));
            blackName.Start();

            introSound.Stop();
            outroSound.Stop();
            globalBgm.Play();
            stormSound.Play();
        }

        private void buddhaBless_Enter(object sender, EventArgs e)
        {
            Thread blackName = new Thread(new ParameterizedThreadStart(switchFromBuddha));
            blackName.Start();

            introSound.Stop();
            outroSound.Stop();
            globalBgm.Play();
            stormSound.Stop();
        }
    }
}
