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
    public partial class LoginWindow : Window
    {
        TradeEntities db = DB.Inst;
        string captchaTrueAnswer = "";
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void loginButton_Click(object sender, RoutedEventArgs e)
        {
            string login = loginField.Text;
            string password = passwordField.Password;

            if (login == "" || password == "")
            {
                MessageBox.Show("Введите даннные для входа");
                return;
            }

            User user = db.User.FirstOrDefault((u) => u.UserLogin == login);
            if (user == null || user.UserPassword != password)
            {
                MessageBox.Show("Данные неверны");
                Random r = new Random();
                string text = "";
                canvas.Children.Clear();
                for (int i = 0; i < 4; i++)
                {
                    int symbolNum;
                    // Генерируем строку капчи, исключая лишние символы
                    do
                    {
                        symbolNum = r.Next(48, 91);
                    } while (symbolNum > 57 && symbolNum < 65);
                    char symbol = (char)symbolNum;
                    text += symbolNum;
                    TextBlock textBlock = new TextBlock();
                    textBlock.Text = symbol.ToString();
                    textBlock.FontSize = 30;
                    textBlock.Foreground = new SolidColorBrush(Color.FromRgb(0, 0, 0));
                    textBlock.RenderTransform = new RotateTransform(0 + r.Next(-6, 6), 0, 0);
                    Canvas.SetLeft(textBlock, i * 20 + r.Next(-5, 5));
                    Canvas.SetTop(textBlock, r.Next(6));
                    canvas.Children.Add(textBlock);
                }
                Line line = new Line();
                // Начальная вертикальная координата будет обратна для конечной вертикальной,
                // Тогда можно всегда быть уверенным в том что буквы будут задеты
                int startY = 25 + r.Next(-15, 15);
                line.X1 = r.Next(10);
                line.Y1 = startY; 
                line.X2 = 80;
                line.Y2 = 40 - startY;
                line.StrokeThickness = 2;
                line.Stroke = Brushes.Black;
                canvas.Children.Add(line);
                captchaBlock.Visibility = Visibility.Visible;

                startCaptchaQuestion(text);

                return;
            }

            enterUser(user);
        }

        private void loginAsGuestButton_Click(object sender, RoutedEventArgs e)
        {
            Hide();
            new ClientMain().ShowDialog();
            Show();
        }

        void enterUser(User user)
        {
            Window redirect;
            switch (user.Role.RoleName)
            {
                case "Менеджер": redirect = new ManagerMain(); break;
                case "Администратор": redirect = new AdminMain(); break;
                default: redirect = new ClientMain(user); break;
            }
            Hide();
            redirect.ShowDialog();
            Show();
        }


        void startCaptchaQuestion(string captcha)
        {
            loginButton.IsEnabled = false;
            captchaTrueAnswer = captcha;
        }

        private void submitCaptcha_Click(object sender, RoutedEventArgs e)
        {
            loginButton.IsEnabled = true;
            if (captchaAnswer.Text != captchaTrueAnswer)
            {
                BlockUI();
            } else
            {

            }

        }

        async void BlockUI()
        {
            mainGrid.IsEnabled = false;
            await Task.Delay(2000);
            mainGrid.IsEnabled = true;
        }
    }
}

