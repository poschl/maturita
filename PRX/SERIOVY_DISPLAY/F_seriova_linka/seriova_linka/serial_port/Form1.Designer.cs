namespace serial_port
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            grpB = new GroupBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            comboBox5 = new ComboBox();
            comboBox4 = new ComboBox();
            comboBox3 = new ComboBox();
            comboBox2 = new ComboBox();
            lblComPort = new Label();
            comboBox1 = new ComboBox();
            grpB.SuspendLayout();
            SuspendLayout();
            // 
            // grpB
            // 
            grpB.Controls.Add(label5);
            grpB.Controls.Add(label4);
            grpB.Controls.Add(label3);
            grpB.Controls.Add(label2);
            grpB.Controls.Add(comboBox5);
            grpB.Controls.Add(comboBox4);
            grpB.Controls.Add(comboBox3);
            grpB.Controls.Add(comboBox2);
            grpB.Controls.Add(lblComPort);
            grpB.Controls.Add(comboBox1);
            grpB.Location = new Point(25, 22);
            grpB.Name = "grpB";
            grpB.Size = new Size(390, 426);
            grpB.TabIndex = 0;
            grpB.TabStop = false;
            grpB.Text = "Serial Port ";
            grpB.Enter += groupBox1_Enter;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(71, 204);
            label5.Name = "label5";
            label5.Size = new Size(59, 25);
            label5.TabIndex = 9;
            label5.Text = "label5";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(71, 165);
            label4.Name = "label4";
            label4.Size = new Size(59, 25);
            label4.TabIndex = 8;
            label4.Text = "label4";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(71, 125);
            label3.Name = "label3";
            label3.Size = new Size(59, 25);
            label3.TabIndex = 7;
            label3.Text = "label3";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(71, 86);
            label2.Name = "label2";
            label2.Size = new Size(59, 25);
            label2.TabIndex = 6;
            label2.Text = "label2";
            label2.Click += label2_Click;
            // 
            // comboBox5
            // 
            comboBox5.FormattingEnabled = true;
            comboBox5.Location = new Point(136, 86);
            comboBox5.Name = "comboBox5";
            comboBox5.Size = new Size(182, 33);
            comboBox5.TabIndex = 5;
            // 
            // comboBox4
            // 
            comboBox4.FormattingEnabled = true;
            comboBox4.Location = new Point(136, 125);
            comboBox4.Name = "comboBox4";
            comboBox4.Size = new Size(182, 33);
            comboBox4.TabIndex = 4;
            // 
            // comboBox3
            // 
            comboBox3.FormattingEnabled = true;
            comboBox3.Location = new Point(136, 204);
            comboBox3.Name = "comboBox3";
            comboBox3.Size = new Size(182, 33);
            comboBox3.TabIndex = 3;
            // 
            // comboBox2
            // 
            comboBox2.FormattingEnabled = true;
            comboBox2.Location = new Point(136, 165);
            comboBox2.Name = "comboBox2";
            comboBox2.Size = new Size(182, 33);
            comboBox2.TabIndex = 2;
            // 
            // lblComPort
            // 
            lblComPort.AutoSize = true;
            lblComPort.Location = new Point(32, 50);
            lblComPort.Name = "lblComPort";
            lblComPort.Size = new Size(98, 25);
            lblComPort.TabIndex = 1;
            lblComPort.Text = "Comp Port";
            lblComPort.Click += label1_Click;
            // 
            // comboBox1
            // 
            comboBox1.FormattingEnabled = true;
            comboBox1.Location = new Point(136, 46);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(182, 33);
            comboBox1.TabIndex = 0;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(grpB);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            grpB.ResumeLayout(false);
            grpB.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private GroupBox grpB;
        private Label lblComPort;
        private ComboBox comboBox1;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label label2;
        private ComboBox comboBox5;
        private ComboBox comboBox4;
        private ComboBox comboBox3;
        private ComboBox comboBox2;
    }
}