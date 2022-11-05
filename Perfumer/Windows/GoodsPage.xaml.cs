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
using Perfumer.Model;

namespace Perfumer.Windows
{
    /// <summary>
    /// Логика взаимодействия для GoodsPage.xaml
    /// </summary>
    public partial class GoodsPage : Window
    {
        public GoodsPage()
        {
            InitializeComponent();
            using ( Model.ParfumerEntities entities = new Model.ParfumerEntities() )
            {
                ListPerfums.ItemsSource = entities.Product.OrderBy(p => p.Name).ToList();
            }
        }
    }
}
