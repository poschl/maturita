using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SP
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void bttn_nahrat_Click(object sender, EventArgs e)
        {
            serialPort1.PortName=txtBx_NazevPortu.Text;
        }

        private void txtBx_PsanyText_TextChanged(object sender, EventArgs e)
        {
            char[] chyba = { 'ě', 'š', 'č', 'ř', 'ž', 'ý', 'á', 'í', 'é','ó','Ě','Š','Č','Ř','Ž','Ý','Á','Í','É','Ó','_','?','!'};
           
            for (int N=0; N<chyba.Length; N++)
            {
                if (txtBx_PsanyText.Text.Last() == chyba[N])
                {
                    MessageBox.Show("Zadejte text bez diakritiky");
                    goto Tady;
                }

            }
                  if (txtBx_PsanyText.Text != string.Empty)
                  {
                     serialPort1.Open();
                     serialPort1.Write(Convert.ToString(txtBx_PsanyText.Text.Last()));
                     serialPort1.Close();
                  }
                  else MessageBox.Show("Napiš mi něco hezkého.");
            Tady:;
            
        }
    }
}
