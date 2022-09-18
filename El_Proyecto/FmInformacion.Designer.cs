namespace El_Proyecto
{
    partial class FmInformacion
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FmInformacion));
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.LBTitulo = new System.Windows.Forms.Label();
            this.PBImagenLogo = new System.Windows.Forms.PictureBox();
            this.PNFondo = new Telerik.WinControls.UI.RadPanel();
            this.BTAtras = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.PBImagenLogo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.PNFondo)).BeginInit();
            this.PNFondo.SuspendLayout();
            this.SuspendLayout();
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F);
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.label3.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label3.Location = new System.Drawing.Point(90, 309);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(209, 20);
            this.label3.TabIndex = 21;
            this.label3.Text = "© Copyright El Grupo 2022";
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label1.Location = new System.Drawing.Point(151, 207);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 29);
            this.label1.TabIndex = 19;
            this.label1.Text = "Version:";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // LBTitulo
            // 
            this.LBTitulo.AutoSize = true;
            this.LBTitulo.BackColor = System.Drawing.Color.Transparent;
            this.LBTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.LBTitulo.ForeColor = System.Drawing.Color.White;
            this.LBTitulo.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.LBTitulo.Location = new System.Drawing.Point(104, 162);
            this.LBTitulo.Name = "LBTitulo";
            this.LBTitulo.Size = new System.Drawing.Size(198, 29);
            this.LBTitulo.TabIndex = 18;
            this.LBTitulo.Text = "Abstract Contacts";
            // 
            // PBImagenLogo
            // 
            this.PBImagenLogo.BackColor = System.Drawing.Color.Transparent;
            this.PBImagenLogo.Image = global::El_Proyecto.Properties.Resources.Logo_de_la_aplicacion;
            this.PBImagenLogo.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.PBImagenLogo.Location = new System.Drawing.Point(156, 49);
            this.PBImagenLogo.Name = "PBImagenLogo";
            this.PBImagenLogo.Size = new System.Drawing.Size(95, 95);
            this.PBImagenLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PBImagenLogo.TabIndex = 2;
            this.PBImagenLogo.TabStop = false;
            // 
            // PNFondo
            // 
            this.PNFondo.AutoSize = true;
            this.PNFondo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(64)))));
            this.PNFondo.Controls.Add(this.BTAtras);
            this.PNFondo.Controls.Add(this.label3);
            this.PNFondo.Controls.Add(this.label2);
            this.PNFondo.Controls.Add(this.label1);
            this.PNFondo.Controls.Add(this.LBTitulo);
            this.PNFondo.Controls.Add(this.PBImagenLogo);
            this.PNFondo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.PNFondo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F);
            this.PNFondo.Location = new System.Drawing.Point(0, 0);
            this.PNFondo.Name = "PNFondo";
            this.PNFondo.Size = new System.Drawing.Size(401, 387);
            this.PNFondo.TabIndex = 4;
            this.PNFondo.Tag = "Usuario:";
            this.PNFondo.ThemeName = "ControlDefault";
            ((Telerik.WinControls.Primitives.FillPrimitive)(this.PNFondo.GetChildAt(0).GetChildAt(0))).BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(0)))), ((int)(((byte)(77)))));
            ((Telerik.WinControls.Primitives.FillPrimitive)(this.PNFondo.GetChildAt(0).GetChildAt(0))).BackColor3 = System.Drawing.Color.FromArgb(((int)(((byte)(137)))), ((int)(((byte)(0)))), ((int)(((byte)(85)))));
            ((Telerik.WinControls.Primitives.FillPrimitive)(this.PNFondo.GetChildAt(0).GetChildAt(0))).BackColor4 = System.Drawing.Color.FromArgb(((int)(((byte)(174)))), ((int)(((byte)(2)))), ((int)(((byte)(89)))));
            ((Telerik.WinControls.Primitives.FillPrimitive)(this.PNFondo.GetChildAt(0).GetChildAt(0))).Shape = null;
            // 
            // BTAtras
            // 
            this.BTAtras.BackColor = System.Drawing.Color.Transparent;
            this.BTAtras.FlatAppearance.BorderSize = 0;
            this.BTAtras.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BTAtras.Image = global::El_Proyecto.Properties.Resources.Icono_de_otra_x_mas_grande;
            this.BTAtras.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.BTAtras.Location = new System.Drawing.Point(346, 12);
            this.BTAtras.Name = "BTAtras";
            this.BTAtras.Size = new System.Drawing.Size(43, 36);
            this.BTAtras.TabIndex = 23;
            this.BTAtras.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.BTAtras.UseVisualStyleBackColor = false;
            this.BTAtras.Click += new System.EventHandler(this.BTAtras_Click);
            // 
            // label2
            // 
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label2.Location = new System.Drawing.Point(134, 246);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(128, 29);
            this.label2.TabIndex = 20;
            this.label2.Text = "1.0.0";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // FmInformacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(401, 387);
            this.Controls.Add(this.PNFondo);
            this.ForeColor = System.Drawing.Color.Black;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FmInformacion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FmInformacion";
            ((System.ComponentModel.ISupportInitialize)(this.PBImagenLogo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.PNFondo)).EndInit();
            this.PNFondo.ResumeLayout(false);
            this.PNFondo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label LBTitulo;
        private System.Windows.Forms.PictureBox PBImagenLogo;
        private Telerik.WinControls.UI.RadPanel PNFondo;
        private System.Windows.Forms.Button BTAtras;
        private System.Windows.Forms.Label label2;
    }
}