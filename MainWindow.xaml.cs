using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
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

namespace RadiantGameRecorder
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Startup();
        }

        int currentIndex = 0;
        List<string> games = new List<string>();

        private void Startup()
        {
            SetupMenuDrawer();

            string gamesFileStr = File.ReadAllText("games.txt");
            string[] a = gamesFileStr.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
            List<string> gameList = a.Cast<string>().ToList();
            gameList.Sort();
            foreach (string item in gameList)
                GameListBox.Items.Add(item);

            GameListBox.SelectedIndex = 11;

            screen1.Source = new BitmapImage(new Uri("C:\\Users\\kyler\\Documents\\Overwatch\\ScreenShots\\Overwatch\\ScreenShot_16-05-08_16-11-08-000.jpg"));
            screen2.Source = new BitmapImage(new Uri("C:\\Users\\kyler\\Documents\\Overwatch\\ScreenShots\\Overwatch\\ScreenShot_16-05-08_19-06-47-000.jpg"));
            screen3.Source = new BitmapImage(new Uri("C:\\Users\\kyler\\Documents\\Overwatch\\ScreenShots\\Overwatch\\ScreenShot_16-05-08_22-07-21-000.jpg"));
            screen3.Source = new BitmapImage(new Uri("C:\\Users\\kyler\\Documents\\Overwatch\\ScreenShots\\Overwatch\\ScreenShot_16-05-08_22-07-21-000.jpg"));
            screen4.Source = new BitmapImage(new Uri("C:\\Users\\kyler\\Documents\\Overwatch\\ScreenShots\\Overwatch\\ScreenShot_16-05-08_21-38-29-000.jpg"));
        }

        private void SetupMenuDrawer()
        {
            MenuListBox.Items.Add("Home");
            MenuListBox.Items.Add("Add Game");
            MenuListBox.Items.Add("About");
        }

        private void ImageBox_Drop(object sender, DragEventArgs e)
        {

        }

        private void GameListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // TODO: NOTE: This is a testbed location for debugging purposes. Location must be changed on release.
            string imageLocation = "C:\\Users\\kyler\\Documents\\Visual Studio 2015\\Projects\\testbed\\" + GameListBox.SelectedItem + ".jpg";
            string backgroundImage = "";

            if (File.Exists(imageLocation))
                backgroundImage = imageLocation;

            Console.WriteLine(backgroundImage);
            try
            {
                ImageBox.Source = new BitmapImage(new Uri(backgroundImage));
            }
            catch (Exception ex) { }

            TitleLabel.Content = GameListBox.SelectedItem.ToString();
        }

        private void OpenScreenshotsLabel_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            Process.Start(@"C:\\Users\\kyler\\Documents\\Overwatch\\ScreenShots\\Overwatch");
        }
        /* Serialization code
        var json = new JavaScriptSerializer().Serialize(list);
        writeJSONtoFile(json);
        */
    }
}
