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

namespace Florist.Screens
{
    /// <summary>
    /// Логика взаимодействия для ClientMain.xaml
    /// </summary>
    public partial class ClientMain : Window
    {
        const int showCount = 15;
        TradeEntities db = DB.Inst;
        User user;

        string searchString = "";
        string sortString = "По возрастанию";
        string filterString = "Все диапазоны";

        /// <summary>
        /// Создание главного окна работы гостевого пользователя
        /// </summary>
        public ClientMain() : this(null) { }

        /// <summary>
        /// Создание главного окна работы клиента
        /// </summary>
        /// <param name="user">Клиент</param>
        public ClientMain(User user)
        {
            InitializeComponent();
            this.user = user;
            productList.ItemsSource = db.Product.ToList();
            sortCb.ItemsSource = new[] { "По возрастанию", "По убыванию" };
            sortCb.SelectedItem = "По возрастанию";
            filterCb.ItemsSource = new[] { "Все диапазоны", "0-9,99%", "10-14,99%", "15% и более" };
            filterCb.SelectedItem = "Все диапазоны";
            if(user != null)
            {
                userSurname.Text = user.UserSurname;
                userName.Text = user.UserName;
                userPatronymic.Text = user.UserPatronymic;
            }
            useFilters();
        }

        void useFilters()
        {
            var products = db.Product.ToList();

            if(searchString != "")
                products = products.Where((p) => p.ProductName.ToLower().Contains(searchString.ToLower())).ToList();

            if(filterString != "Все диапазоны")
            {
                products = products.Where(delegate (Product p)
                {
                    switch (filterString)
                    {
                        case "0-9,99%": return p.ProductDiscountAmount < 10;
                        case "10-14,99%": return p.ProductDiscountAmount >= 10 && p.ProductDiscountAmount < 15;
                        case "15% и более": return p.ProductDiscountAmount >= 15;
                        default: return false;
                    }
                }).ToList();
            }

            if (sortString == "По возрастанию")
                products.Sort((p1, p2) => p1.ProductCost > p2.ProductCost ? 1 : p1.ProductCost == p2.ProductCost ? 0 : -1);
            if (sortString == "По убыванию")
                products.Sort((p1, p2) => p1.ProductCost > p2.ProductCost ? -1 : p1.ProductCost == p2.ProductCost ? 0 : 1);

            int allCount = products.Count;
            if (products.Count >= showCount)
            {
                products = products.GetRange(0, showCount);
                itemsCount.Content = products.Count + " из " + allCount;
            }
            else
            {
                itemsCount.Content = products.Count + " из " + products.Count;
            }

            emptySearch.Visibility = products.Count <= 0 ? Visibility.Visible : Visibility.Hidden;
            productList.ItemsSource = products;
        }

        private void sortCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            sortString = (sortCb.SelectedItem as string);
            useFilters();
        }

        private void filterCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            filterString = (filterCb.SelectedItem as string);
            useFilters();
        }

        private void searchField_TextChanged(object sender, TextChangedEventArgs e)
        {
            searchString = searchField.Text;
            useFilters();
        }

        private void productList_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            
        }

        private void Grid_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {

        }
    }
}
