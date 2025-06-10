using System.Windows;
using System.Windows.Input;

namespace seventh_practice
{
    /// <summary>
    /// Логика взаимодействия для AddToDo.xaml
    /// </summary>
    public partial class AddToDo : Window
    {
        public static RoutedCommand SaveToDoCommand = new RoutedCommand();
        DateTime TimeNow { get; }

        public AddToDo()
        {
            InitializeComponent();
            TimeNow = DateTime.Now;
            dateToDo.SelectedDate = TimeNow;
        }

        private void SaveToDo(object sender, RoutedEventArgs e)
        {

            if (string.IsNullOrEmpty(titleToDo.Text))
            {
                MessageBox.Show("Поле название должно быть заполнено!", "Ошибка заполнения", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (!dateToDo.SelectedDate.HasValue)
            {
                dateToDo.SelectedDate = DateTime.Now;
            }

            if (string.IsNullOrEmpty(descriptionToDo.Text))
            {
                descriptionToDo.Text = "Описания нет";
            }

            var mainWindow = (MainWindow)Owner;

            mainWindow.ToDoList.Add(new ToDo(titleToDo.Text,
                                    new DateTime(dateToDo.SelectedDate.Value.Year,
                                                dateToDo.SelectedDate.Value.Month,
                                                dateToDo.SelectedDate.Value.Day,
                                                TimeNow.Hour,
                                                TimeNow.Minute,
                                                TimeNow.Second),
                                    descriptionToDo.Text));
            this.Close();
        }
    }
}
