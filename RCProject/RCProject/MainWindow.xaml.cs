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
using System.Windows.Interop;
using Excel = Microsoft.Office.Interop.Excel;


namespace RCProject
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Click_Butt1(object sender, RoutedEventArgs e)
        {
            Download();
        }
       
        public void Download()
        {
            
            Excel.Application ApplEx = null;
            Excel.Workbook WorkBookEx = null;
            Excel.Worksheet WorkShEx = null;
            ApplEx = new Excel.Application();
            ApplEx.Visible = true;
            ApplEx.Workbooks.Add();
            WorkShEx = (Excel.Worksheet)ApplEx.ActiveSheet;

            if (ButDN.SelectedIndex == 0)
            {
                WorkShEx.Cells[1, 1] = "Vibor0";
            }
            if (ButDN.SelectedIndex==1)
            {
                WorkShEx.Cells[1, 1] = "Vibor1";
            }
            if (ButDN.SelectedIndex == 2)
            {
                WorkShEx.Cells[1, 1] = "Vibor2";
            }
            WorkBookEx.Save();
            //WorkShEx.SaveAs(@"C:\Users\Шаймарданов С М\Desktop\PROJECT_VS\work\RC");
            //MessageBox.Show(ButDN.Text);
        }
        
        private void Click_Butt2(object sender, RoutedEventArgs e)
        {
            Excel.Application ApplEx = null;
            Excel.Workbook WorkBookEx = null;
            Excel.Worksheet WorkShEx = null;
            ApplEx = new Excel.Application();
            ApplEx.Visible = true;
            ApplEx.Workbooks.Open(@"\\WITZENMANN\!Witz17\!Чтение\!РЦпроект\РЦзаявка.xlsm",
                Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing,
                Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
            //\Users\Шаймарданов С М\Desktop\!!!файлы РЦзаявка\!!!файлы РЦзаявка МР\
        }
    }
    

}
