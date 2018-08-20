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
using System.Data.SqlClient;


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
            #region Старый эксп участок кода (не использовать)
            /*
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
            //MessageBox.Show(ButDN.Text);   */
            #endregion
        }
        private void Click_Butt2(object sender, RoutedEventArgs e)
        {
            Excel.Application ApplEx = null;
            Excel.Workbook WorkBookEx = null;
            Excel.Worksheet WorkShEx = null;
            Excel.Sheets excellsheet = null;
            ApplEx = new Excel.Application();
            ApplEx.Visible = true;
            WorkBookEx = ApplEx.Workbooks.Open(@"C:\Users\mercu\Desktop\Project VS\WORK\RCProject\RCProject\ЗаявкаРЦ.xlsx",
                Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing,
                Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
            excellsheet = WorkBookEx.Worksheets;
            WorkShEx = (Excel.Worksheet)excellsheet.get_Item(1);
            //\Users\Шаймарданов С М\Desktop\!!!файлы РЦзаявка\!!!файлы РЦзаявка МР\
            if(TypeConnect.SelectedItem.ToString().Remove(0, 38) == "П12")
            {
                WorkShEx.Cells[3, "H"] = customer.Text;
                WorkShEx.Cells[3, "J"] = ProjectCRM.Text;
                WorkShEx.Cells[3, "K"] = "1";
                WorkShEx.Cells[3, "L"] = SupervSubject.SelectedItem.ToString().Remove(0,38);
                if(CustLabeling.IsEnabled == true)
                {
                    WorkShEx.Cells[3, "M"] = CustLabeling.Text;
                }
                else
                {
                    WorkShEx.Cells[3, "M"] = TypeGO.SelectedItem.ToString().Remove(0, 38) + NumberBR.SelectedItem.ToString().Remove(0, 38) + " " +
                        TypeConnect.SelectedItem.ToString().Remove(0, 38) + " " +
                        ButDN.SelectedItem.ToString().Remove(0, 38) + " " + "PN" + ButPN.SelectedItem.ToString().Remove(0, 38) + " LN" +
                        double.Parse(TextLN.Text) / 1000;
                }
                WorkShEx.Cells[3, "P"] = "изд";
                WorkShEx.Cells[3, "U"] = "Металлорукав";
                WorkShEx.Cells[3, "W"] = Int16.Parse(NumbMetHos.Text);

                //WorkShEx.Cells[8, "H"] = "text "+TypeConnect.SelectedItem.ToString().Remove(0,38);
            }
        }
        private void checked_true(object sender, RoutedEventArgs e)
        {
            CustLabeling.IsEnabled = true;
        }
        private void checked_false(object sender, RoutedEventArgs e)
        {
            CustLabeling.IsEnabled = false;
        }
    }
    
}
