namespace GraveRobberHyperVisor
{
    partial class MainForm
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.leaveButton = new System.Windows.Forms.Button();
            this.visionControl = new System.Windows.Forms.TabControl();
            this.initPage = new System.Windows.Forms.TabPage();
            this.introPage = new System.Windows.Forms.TabPage();
            this.aboutButton = new System.Windows.Forms.Button();
            this.foggyPage = new System.Windows.Forms.TabPage();
            this.mysteriousRoom = new System.Windows.Forms.TabPage();
            this.buddhaBless = new System.Windows.Forms.TabPage();
            this.endPage = new System.Windows.Forms.TabPage();
            this.globalTimer = new System.Windows.Forms.Timer(this.components);
            this.previousButton = new System.Windows.Forms.Button();
            this.nextButton = new System.Windows.Forms.Button();
            this.mainViewBox = new System.Windows.Forms.PictureBox();
            this.visionControl.SuspendLayout();
            this.initPage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.mainViewBox)).BeginInit();
            this.SuspendLayout();
            // 
            // leaveButton
            // 
            this.leaveButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.leaveButton.Location = new System.Drawing.Point(35, 786);
            this.leaveButton.Name = "leaveButton";
            this.leaveButton.Size = new System.Drawing.Size(97, 41);
            this.leaveButton.TabIndex = 0;
            this.leaveButton.Text = "离开";
            this.leaveButton.UseVisualStyleBackColor = true;
            this.leaveButton.Click += new System.EventHandler(this.leaveButton_Click);
            // 
            // visionControl
            // 
            this.visionControl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.visionControl.Controls.Add(this.initPage);
            this.visionControl.Controls.Add(this.introPage);
            this.visionControl.Controls.Add(this.foggyPage);
            this.visionControl.Controls.Add(this.mysteriousRoom);
            this.visionControl.Controls.Add(this.buddhaBless);
            this.visionControl.Controls.Add(this.endPage);
            this.visionControl.Location = new System.Drawing.Point(167, -2);
            this.visionControl.Name = "visionControl";
            this.visionControl.SelectedIndex = 0;
            this.visionControl.Size = new System.Drawing.Size(1225, 856);
            this.visionControl.TabIndex = 1;
            this.visionControl.SelectedIndexChanged += new System.EventHandler(this.visionControl_SelectedIndexChanged);
            // 
            // initPage
            // 
            this.initPage.Controls.Add(this.mainViewBox);
            this.initPage.Location = new System.Drawing.Point(8, 39);
            this.initPage.Name = "initPage";
            this.initPage.Padding = new System.Windows.Forms.Padding(3);
            this.initPage.Size = new System.Drawing.Size(1209, 809);
            this.initPage.TabIndex = 0;
            this.initPage.Text = "开始之前";
            this.initPage.UseVisualStyleBackColor = true;
            // 
            // introPage
            // 
            this.introPage.Location = new System.Drawing.Point(8, 39);
            this.introPage.Name = "introPage";
            this.introPage.Padding = new System.Windows.Forms.Padding(3);
            this.introPage.Size = new System.Drawing.Size(1209, 809);
            this.introPage.TabIndex = 1;
            this.introPage.Text = "笔记出现";
            this.introPage.UseVisualStyleBackColor = true;
            // 
            // aboutButton
            // 
            this.aboutButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.aboutButton.Location = new System.Drawing.Point(35, 734);
            this.aboutButton.Name = "aboutButton";
            this.aboutButton.Size = new System.Drawing.Size(97, 41);
            this.aboutButton.TabIndex = 2;
            this.aboutButton.Text = "关于";
            this.aboutButton.UseVisualStyleBackColor = true;
            this.aboutButton.Click += new System.EventHandler(this.aboutButton_Click);
            // 
            // foggyPage
            // 
            this.foggyPage.Location = new System.Drawing.Point(8, 39);
            this.foggyPage.Name = "foggyPage";
            this.foggyPage.Padding = new System.Windows.Forms.Padding(3);
            this.foggyPage.Size = new System.Drawing.Size(1209, 809);
            this.foggyPage.TabIndex = 2;
            this.foggyPage.Text = "雾气弥漫";
            this.foggyPage.UseVisualStyleBackColor = true;
            // 
            // mysteriousRoom
            // 
            this.mysteriousRoom.Location = new System.Drawing.Point(8, 39);
            this.mysteriousRoom.Name = "mysteriousRoom";
            this.mysteriousRoom.Padding = new System.Windows.Forms.Padding(3);
            this.mysteriousRoom.Size = new System.Drawing.Size(1209, 809);
            this.mysteriousRoom.TabIndex = 3;
            this.mysteriousRoom.Text = "怪异房间";
            this.mysteriousRoom.UseVisualStyleBackColor = true;
            // 
            // buddhaBless
            // 
            this.buddhaBless.Location = new System.Drawing.Point(8, 39);
            this.buddhaBless.Name = "buddhaBless";
            this.buddhaBless.Padding = new System.Windows.Forms.Padding(3);
            this.buddhaBless.Size = new System.Drawing.Size(1209, 809);
            this.buddhaBless.TabIndex = 4;
            this.buddhaBless.Text = "佛祖保佑";
            this.buddhaBless.UseVisualStyleBackColor = true;
            // 
            // endPage
            // 
            this.endPage.Location = new System.Drawing.Point(8, 39);
            this.endPage.Name = "endPage";
            this.endPage.Padding = new System.Windows.Forms.Padding(3);
            this.endPage.Size = new System.Drawing.Size(1209, 809);
            this.endPage.TabIndex = 5;
            this.endPage.Text = "终末之诗";
            this.endPage.UseVisualStyleBackColor = true;
            // 
            // globalTimer
            // 
            this.globalTimer.Tick += new System.EventHandler(this.globalTimer_Tick);
            // 
            // previousButton
            // 
            this.previousButton.Location = new System.Drawing.Point(13, 12);
            this.previousButton.Name = "previousButton";
            this.previousButton.Size = new System.Drawing.Size(61, 91);
            this.previousButton.TabIndex = 3;
            this.previousButton.Text = "<";
            this.previousButton.UseVisualStyleBackColor = true;
            this.previousButton.Click += new System.EventHandler(this.previousButton_Click);
            // 
            // nextButton
            // 
            this.nextButton.Location = new System.Drawing.Point(91, 12);
            this.nextButton.Name = "nextButton";
            this.nextButton.Size = new System.Drawing.Size(60, 91);
            this.nextButton.TabIndex = 4;
            this.nextButton.Text = ">";
            this.nextButton.UseVisualStyleBackColor = true;
            this.nextButton.Click += new System.EventHandler(this.nextButton_Click);
            // 
            // mainViewBox
            // 
            this.mainViewBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.mainViewBox.Image = ((System.Drawing.Image)(resources.GetObject("mainViewBox.Image")));
            this.mainViewBox.Location = new System.Drawing.Point(0, 0);
            this.mainViewBox.Name = "mainViewBox";
            this.mainViewBox.Size = new System.Drawing.Size(1209, 809);
            this.mainViewBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.mainViewBox.TabIndex = 0;
            this.mainViewBox.TabStop = false;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1404, 852);
            this.Controls.Add(this.nextButton);
            this.Controls.Add(this.previousButton);
            this.Controls.Add(this.aboutButton);
            this.Controls.Add(this.visionControl);
            this.Controls.Add(this.leaveButton);
            this.Name = "MainForm";
            this.Text = "[SE-344 Assignment Final] GRAVE ROBBER";
            this.visionControl.ResumeLayout(false);
            this.initPage.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.mainViewBox)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button leaveButton;
        private System.Windows.Forms.TabControl visionControl;
        private System.Windows.Forms.TabPage initPage;
        private System.Windows.Forms.TabPage introPage;
        private System.Windows.Forms.Button aboutButton;
        private System.Windows.Forms.TabPage foggyPage;
        private System.Windows.Forms.TabPage mysteriousRoom;
        private System.Windows.Forms.TabPage buddhaBless;
        private System.Windows.Forms.TabPage endPage;
        private System.Windows.Forms.Timer globalTimer;
        private System.Windows.Forms.Button previousButton;
        private System.Windows.Forms.Button nextButton;
        private System.Windows.Forms.PictureBox mainViewBox;
    }
}

