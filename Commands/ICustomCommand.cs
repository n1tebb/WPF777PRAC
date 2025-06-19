using System;
using System.Windows.Input;

namespace seventh_practice.Commands
{
    public interface ICustomCommand : System.Windows.Input.ICommand
    {
        event EventHandler CanExecuteChanged;
        bool CanExecute(object parameter);
        void Execute(object parameter);
    }
}