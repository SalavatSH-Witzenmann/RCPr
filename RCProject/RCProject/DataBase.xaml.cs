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
using System.Data.Entity.Core.Objects;
using System.Windows;
using System.Linq;

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

        private void thread_check(object sender, RoutedEventArgs e)
        {
            Thread.IsEnabled = true;
        }
        private void thread_uncheck(object sender, RoutedEventArgs e)
        {
            Thread.IsEnabled = false;
        }

        private void note_check(object sender, RoutedEventArgs e)
        {
            Note.IsEnabled = true;
        }
        private void note_uncheck(object sender, RoutedEventArgs e)
        {
            Note.IsEnabled = false;
        }

        #endregion

        #region секция для заполнения БД CorrugSh
        private void filling_click(object sender, RoutedEventArgs e)
        {
            var context = new MetHoseContainer();
            var CorrugSheath = new tCorrugSheath {Type=CorrugSheath_kn.SelectedItem.ToString().Remove(0,38),
                DN=Int16.Parse(DNCorSh_kn.SelectedItem.ToString().Remove(0,40)),
                PN=Double.Parse(PNCorSh_kn.SelectedItem.ToString().Remove(0,40)), Dout=Double.Parse(DoutCS_kn.Text),
                Din=Double.Parse(DinCS_kn.Text), TPch=Double.Parse(TPchCS_kn.Text),
                Dtop=Double.Parse(DtopCS_kn.Text), Dbot=Double.Parse(DbotCS_kn.Text),
                Rmin=Int16.Parse(RminCS_kn.Text), Rn=Int16.Parse(RnCS_kn.Text),
                Th=Double.Parse(ThCS_kn.Text), Description=DescriptionCS_kn.Text,
                Executor = ExecutorCS_kn.Text};                                                                        //учитывать локализацию для типа string
            context.tCorrugSheathSet.Add(CorrugSheath);
            context.SaveChanges();
        }
        #endregion

        #region секция для заполнения БД Material
        private void matdb_filling_click(object sender, RoutedEventArgs e)
        {
            var context = new MetHoseContainer();


        }
        #endregion

        private void DataBase_loaded(object sender, RoutedEventArgs e)
        {
            var context = new MetHoseContainer();
            var corsheath = context.tCorrugSheathSet.ToList();
            DateGridCS.ItemsSource = corsheath;

        }

        
    }
}
