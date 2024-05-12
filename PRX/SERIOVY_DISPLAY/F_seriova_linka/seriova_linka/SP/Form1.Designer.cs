namespace SP
{
    partial class Form1
    {
        /// <summary>
        /// Vyžaduje se proměnná návrháře.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Uvolněte všechny používané prostředky.
        /// </summary>
        /// <param name="disposing">hodnota true, když by se měl spravovaný prostředek odstranit; jinak false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kód generovaný Návrhářem Windows Form

        /// <summary>
        /// Metoda vyžadovaná pro podporu Návrháře - neupravovat
        /// obsah této metody v editoru kódu.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.bttn_nahrat = new System.Windows.Forms.Button();
            this.txtBx_NazevPortu = new System.Windows.Forms.TextBox();
            this.txtBx_PsanyText = new System.Windows.Forms.TextBox();
            this.lbl_NazevPortu = new System.Windows.Forms.Label();
            this.lbl_PsanyText = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // bttn_nahrat
            // 
            this.bttn_nahrat.Location = new System.Drawing.Point(43, 101);
            this.bttn_nahrat.Name = "bttn_nahrat";
            this.bttn_nahrat.Size = new System.Drawing.Size(118, 35);
            this.bttn_nahrat.TabIndex = 0;
            this.bttn_nahrat.Text = "NAHRÁT";
            this.bttn_nahrat.UseVisualStyleBackColor = true;
            this.bttn_nahrat.Click += new System.EventHandler(this.bttn_nahrat_Click);
            // 
            // txtBx_NazevPortu
            // 
            this.txtBx_NazevPortu.Location = new System.Drawing.Point(43, 69);
            this.txtBx_NazevPortu.Name = "txtBx_NazevPortu";
            this.txtBx_NazevPortu.Size = new System.Drawing.Size(118, 26);
            this.txtBx_NazevPortu.TabIndex = 1;
            // 
            // txtBx_PsanyText
            // 
            this.txtBx_PsanyText.Location = new System.Drawing.Point(43, 230);
            this.txtBx_PsanyText.Name = "txtBx_PsanyText";
            this.txtBx_PsanyText.Size = new System.Drawing.Size(118, 26);
            this.txtBx_PsanyText.TabIndex = 2;
            this.txtBx_PsanyText.TextChanged += new System.EventHandler(this.txtBx_PsanyText_TextChanged);
            // 
            // lbl_NazevPortu
            // 
            this.lbl_NazevPortu.AutoSize = true;
            this.lbl_NazevPortu.Location = new System.Drawing.Point(39, 46);
            this.lbl_NazevPortu.Name = "lbl_NazevPortu";
            this.lbl_NazevPortu.Size = new System.Drawing.Size(122, 20);
            this.lbl_NazevPortu.TabIndex = 3;
            this.lbl_NazevPortu.Text = "NÁZEV PORTU";
            this.lbl_NazevPortu.Click += new System.EventHandler(this.label1_Click);
            // 
            // lbl_PsanyText
            // 
            this.lbl_PsanyText.AutoSize = true;
            this.lbl_PsanyText.Location = new System.Drawing.Point(40, 207);
            this.lbl_PsanyText.Name = "lbl_PsanyText";
            this.lbl_PsanyText.Size = new System.Drawing.Size(121, 20);
            this.lbl_PsanyText.TabIndex = 4;
            this.lbl_PsanyText.Text = "NAPIŠTE TEXT";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.lbl_PsanyText);
            this.Controls.Add(this.lbl_NazevPortu);
            this.Controls.Add(this.txtBx_PsanyText);
            this.Controls.Add(this.txtBx_NazevPortu);
            this.Controls.Add(this.bttn_nahrat);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.Button bttn_nahrat;
        private System.Windows.Forms.TextBox txtBx_NazevPortu;
        private System.Windows.Forms.TextBox txtBx_PsanyText;
        private System.Windows.Forms.Label lbl_NazevPortu;
        private System.Windows.Forms.Label lbl_PsanyText;
    }
}

