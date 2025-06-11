using Microsoft.Win32;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace seventh_practice
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<ToDo> ToDoList = new ObservableCollection<ToDo>();
        public static RoutedCommand SaveToDosCommand = new RoutedCommand();

        public int TodoListCount
        {
            get => ToDoList.Count;
        }
        
        public int ToDoListCountComplited
        {
            get => ToDoList.Where(p => p.Doing == true).Count();
        }

        public MainWindow()
        {
            InitializeComponent();

            listToDo.ItemsSource = ToDoList;

            ToDoList.CollectionChanged += (s, e) => UpdateCounters();
            UpdateCounters();
        }

        private void UpdateCounters()
        {
            CounterText.Text = $"{ToDoList.Count(t => t.Doing)}/{ToDoList.Count}";
            Progress.Maximum = ToDoList.Count;
            Progress.Value = ToDoList.Count(t => t.Doing);
        }

        public void CreateToDo(object sender, RoutedEventArgs e)
        {
            var AddToDo = new AddToDo();
            AddToDo.Show();
            AddToDo.Owner = this;
        }

        private void DeleteToDo(object sender, RoutedEventArgs e)
        {
            var todo = (sender as Button)?.DataContext as ToDo;
            if (todo == null) { return; }
            else
            {
                MessageBoxResult accept = MessageBox.Show("Вы уверены, что хотите удалить дело?",
                                                        "Удаление дела",
                                                        MessageBoxButton.YesNo,
                                                        MessageBoxImage.Warning);
                if (accept == MessageBoxResult.Yes)
                {
                    ToDoList.Remove(todo);
                }
                
            }
        }

        private void CheckBox_Cheked(object sender, RoutedEventArgs e)
        {
            var todo = (sender as CheckBox)?.DataContext as ToDo;
            if (todo != null)
            {
                UpdateCounters();
            }
        }

        private void CheckBox_Uncheked(object sender, RoutedEventArgs e)
        {
            var todo = (sender as CheckBox)?.DataContext as ToDo;
            UpdateCounters();
        }

        private void SaveTextFile(object sender, RoutedEventArgs e)
        {
            SaveFileDialog t = new SaveFileDialog();
            t.Filter = "json file (*.json)|*.json";
            t.DefaultExt = ".json";
            t.Title = "Сохранить задачи в файл";

            if (ToDoList.Count == 0)
            {
                MessageBox.Show("Нельзя сохранить пустой список!", "Ошибка сохранения", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (t.ShowDialog() == true)
            {
                using (StreamWriter writer = new StreamWriter(t.FileName))
                {
                    foreach (var item in ToDoList)
                    {
                        if (item.Doing == true)
                        {
                            writer.WriteLine($"✔{item.Name}");
                        }
                        else
                        {
                            writer.WriteLine(item.Name);
                        }
                        writer.WriteLine($"\n{item.Date}");
                        writer.WriteLine($"\n{item.Description}\n\n");
                    }
                }
            }
        }
    }
}