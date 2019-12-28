using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GraveRobberHyperVisor
{
    public partial class MainForm : Form
    {
        const int maxPageCount = 6;
        public MainForm()
        {
            InitializeComponent();
            visionControl.SelectedIndex = 0;
            previousButton.Enabled = false;

            this.WindowState = FormWindowState.Maximized;
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
    }
}
