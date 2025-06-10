using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace seventh_practice;

public class DateTimeConvertor : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        if (value is DateTime date)
        {
            DateTime today = DateTime.Today;
            DateTime tomorrow = today.AddDays(1);

            if (date < today)
                return new SolidColorBrush(Colors.Red);
            else if (date == today)
                return new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FFEA6A20"));
            else if (date == tomorrow)
                return new SolidColorBrush((Color)ColorConverter.ConvertFromString("#DAA520"));
            else
                return new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF71C52F"));
        }

        return new SolidColorBrush(Colors.Black);
    }

    public object ConvertBack(object value, Type targetType, object? parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
