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
using System.Windows.Shapes;

namespace RCProject
{
    /// <summary>
    /// Логика взаимодействия для DataBase.xaml
    /// </summary>
    public partial class DataBase : Window
    {
        public DataBase()
        {
            InitializeComponent();
        }

        private void SignClick(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Пожалуйста обратите внимание, вводить необходимо наружный диаметр заготовки до операции обжатия/развальцовки," +
                "т.е. наружный диаметр трубы и толщину стенки трубы (не учитывая всевозможных операции)");
        }
        #region check_box для выбора доп операции
        private void chamfer_check(object sender, RoutedEventArgs e)
        {
            Chamfer.IsEnabled = true;
        }
        private void chamfer_uncheck(object sender, RoutedEventArgs e)
        {
            Chamfer.IsEnabled = false;
        }

        private void fillet_check(object sender, RoutedEventArgs e)
        {
            Fillet.IsEnabled = true;        
        }
        private void fillet_uncheck(object sender, RoutedEventArgs e)
        {
            Fillet.IsEnabled = false;
        }

        private void compression_check(object sender, RoutedEventArgs e)
        {
            Compression.IsEnabled = true;
        }
        private void compression_uncheck(object sender, RoutedEventArgs e)
        {
            Compression.IsEnabled = false;
        }

        private void flaring_check(object sender, RoutedEventArgs e)
        {
            Flaring.IsEnabled = true;
        }
        private void flaring_uncheck(object sender, RoutedEventArgs e)
        {
            Flaring.IsEnabled = false;
        }

        private void boring_check(object sender, RoutedEventArgs e)
        {
            Boring.IsEnabled = true;
        }
        private void boring_uncheck(object sender, RoutedEventArgs e)
        {
            Boring.IsEnabled = false;
        }

        private void hole_check(object sender, RoutedEventArgs e)
        {
            Hole.IsEnabled = true;
        }
        private void hole_uncheck(object sender, RoutedEventArgs e)
        {
            Hole.IsEnabled = false;
        }

        #endregion


    }
}
