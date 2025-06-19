using seventh_practice.Commands;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;

namespace seventh_practice
{
    public class MainViewModel : INotifyPropertyChanged
    {
        private ObservableCollection<ToDo> _toDoList;
        public ObservableCollection<ToDo> ToDoList
        {
            get => _toDoList;
            set
            {
                _toDoList = value;
                OnPropertyChanged(nameof(ToDoList));
            }
        }

        public ICommand SaveCommand { get; }
        public ICommand AddCommand { get; }

        public MainViewModel()
        {
            ToDoList = new ObservableCollection<ToDo>();
            SaveCommand = new RelayCommand(Save);
            AddCommand = new RelayCommand(AddTodo);
        }

        private void Save()
        {
            // Логика сохранения в JSON
        }

        private void AddTodo()
        {
            if (Application.Current == null)
            {
                MessageBox.Show("Application.Current is null. Ensure the application is running.");
                return;
            }

            var addTodoWindow = new AddToDo();
            addTodoWindow.Owner = Application.Current.MainWindow;
            addTodoWindow.Show();
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}