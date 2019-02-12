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
    /// Логика взаимодействия для AssemblerWin.xaml
    /// </summary>
    public partial class AssemblerWin : Window
    {
        public AssemblerWin()
        {
            InitializeComponent();
            
        }
        List<MyCollection> myCollections = new List<MyCollection>();

        public void BDinAssembler(object sender, RoutedEventArgs e)
        {
            myCollections.Add(new MyCollection(5, 6));
            myCollections.Add(new MyCollection(4, 7));
            myCollections.Add(new MyCollection(0, 0));
            myDataGrid.ItemsSource = myCollections;            
        }

        public void BDinAssembler1(object sender, RoutedEventArgs e)
        {
            myCollections.Add(new MyCollection(1, 0));
            myCollections.Add(new MyCollection(1, 1));
            myCollections.Add(new MyCollection(1, 2));
                        
        }
    }
}
